import React, {useState} from "react";
import axios from 'axios';

function App() {
  const [inputs, setInputs] = useState({})

  const change = (e) =>{
      const value = e.target.value; 
      const name = e.target.name;
      setInputs(values => ({...values,[name] : value}));
    
  }

  const handleSubmit = (event) =>{
      event.preventDefault();
      console.log(inputs);

      axios.post('http://localhost:8888/petapi/addPet', inputs)
      .then((res)=>{
        console.log(res);
      })
      .catch((err) =>{
        console.log(err);
      })
  }

  return (
    <div className="App">
        <div className="formCon">
          <h1>Expawts: Pet Relocation</h1>
          <p>Sign up below and we will send you a quote!</p>
          <form>
            <input name='petName' type="text" onChange={change} placeholder="Name of Pet" />
            <select name="species" onChange={change}>
              <option selected disabled hidden>Species of Pet</option>
              <option value={"Canine"}>Canine</option>
              <option value={"Feline"}>Feline</option>
              <option value={"Equine"}>Equine</option>
              <option value={"Rodent"}>Rodent</option>
              <option value={"Avian"}>Avian</option>
              <option value={"Reptile"}>Reptile</option>
            </select>
            <select name="gender" onChange={change}>
              <option selected disabled hidden  >Gender/Sex of Pet</option>
              <option value={"Male"}>Male</option>
              <option value={"Female"}>Female</option>
            </select>
            <input onChange={change} type="number" name="age" placeholder="Age of Pet (years) " />
            <input onChange={change} type="text" name="microId" placeholder="Pet MicroChip Id" />
            <input onChange={change} type="text" name="owner" placeholder="Pet Owner Name" />
            <input onChange={change} type="text" name="ownerId" placeholder="Pet Owner ID Number" />
            <input onChange={change} type="text" name="origin" placeholder="Export Origin" />
            <input onChange={change} type="text" name="destination" placeholder="Export Destination" />

            <button onClick={handleSubmit}  onKeyPress = {(event) =>{event.key === "Enter" && handleSubmit()}}>Lets Export That Pet!</button>
          </form>
        </div>
    </div>
  );
}

export default App;
