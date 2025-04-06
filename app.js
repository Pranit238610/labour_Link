let intro = document.querySelector('.intro');
let labourlink= document.querySelector('.labourlink-header');
let labourlinkSpan= document.querySelectorAll('.labourlink');

window.addEventListener('DOMContentLoaded', ()=>{

  setTimeout(()=>{
    
    labourlinkSpan.forEach((span, idx) => {
      setTimeout(() => {
        span.classList.add('active');

    }, (idx + 1) * 400)
  })

  setTimeout(()=>{
    labourlinkSpan.forEach((span, idx)=>{

      setTimeout(()=>{
        span.classList.remove('active');
        span.classList.add('fade');
      }, (idx + 1) * 50 )
    })
  },2000);
  
  setTimeout(()=>{
    intro.style.top = '-100vh';
  }, 2300)

  })

}) 