(function(){
  document.documentElement.classList.add('js');
  var els=[].slice.call(document.querySelectorAll('.reveal'));
  var reduce=window.matchMedia&&matchMedia('(prefers-reduced-motion: reduce)').matches;

  /* count-up on stat numbers (data-count) */
  function countUp(el){
    if(el.dataset.done)return; el.dataset.done='1';
    var target=parseInt(el.dataset.count,10)||0, suffix=el.dataset.suffix||'';
    if(reduce){el.firstChild.textContent=String(target);return;}
    var t0=null, DUR=1400;
    function frame(ts){
      if(!t0)t0=ts;
      var p=Math.min((ts-t0)/DUR,1), e=1-Math.pow(1-p,3);
      el.firstChild.textContent=String(Math.round(target*e));
      if(p<1)requestAnimationFrame(frame);
    }
    requestAnimationFrame(frame);
  }

  function show(e){
    if(e.classList.contains('in'))return;
    e.classList.add('in');
    var nums=e.querySelectorAll?e.querySelectorAll('[data-count]'):[];
    [].forEach.call(nums,countUp);
  }
  if(reduce||!('IntersectionObserver' in window)){els.forEach(show);return;}

  /* stagger: delay by position among sibling reveals */
  els.forEach(function(e){
    var p=e.parentElement;if(!p)return;
    var sibs=[].filter.call(p.children,function(c){return c.classList&&c.classList.contains('reveal')});
    var i=sibs.indexOf(e);
    if(i>0)e.style.transitionDelay=Math.min(i*70,420)+'ms';
  });

  var io=new IntersectionObserver(function(entries){
    entries.forEach(function(en){if(en.isIntersecting){show(en.target);io.unobserve(en.target);}});
  },{threshold:.08});
  els.forEach(function(e){io.observe(e)});

  /* safety net: rAF-throttled scroll checker — nothing can ever stay hidden */
  var pending=els.slice(), ticking=false;
  function sweep(){
    ticking=false;
    for(var i=pending.length-1;i>=0;i--){
      var r=pending[i].getBoundingClientRect();
      if(r.top<innerHeight-20&&r.bottom>0){show(pending[i]);pending.splice(i,1);}
    }
    if(!pending.length){removeEventListener('scroll',onScroll);removeEventListener('resize',onScroll);}
  }
  function onScroll(){if(!ticking){ticking=true;requestAnimationFrame(sweep)}}
  addEventListener('scroll',onScroll,{passive:true});
  addEventListener('resize',onScroll,{passive:true});
  requestAnimationFrame(sweep); /* reveal whatever is on screen at load */

  /* anchor jumps: sweep repeatedly while smooth-scroll settles */
  document.addEventListener('click',function(ev){
    var a=ev.target.closest&&ev.target.closest('a[href^="#"]');
    if(!a)return;
    var n=0,iv=setInterval(function(){sweep();if(++n>24)clearInterval(iv)},80);
  });
})();
