import Logo from './Logo.png'
export default function Hero(){
    return(
        <div className="hero-container">
        <div className="hero-content">
          <img src = {Logo} alt = "Logo" className='hero-img'height = "200px"/>
        <h2>AI meets your code</h2>
        <p>hello i am your friendly neighbourhood epidermon!!!</p>
        <button className='hero-btn'>Try coding</button>
        </div>
        
      </div>
    )
}