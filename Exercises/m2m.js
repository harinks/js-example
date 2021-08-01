const express = require('express');
const app = express()
bodyParser = require('body-parser');
app.use(bodyParser.json());

const fetch = require('node-fetch');

const port = 5000;

    const Input = {    
        branchStudents:[        
            { id: 1, branchId: 1, studentId: 1 },
            { id: 2, branchId: 2, studentId: 2 },
            { id: 3, branchId: 2, studentId: 1 },
            { id: 4, branchId: 1, studentId: 3 }
        ],
        branches: [
            { id: 1, name: "CSE" },
            { id: 2, name: "IT" }
        ],
        students: [
            { id: 1, name: "Jay" },
            { id: 2, name: "Sanjay" },
            { id: 3, name: "Rajesh" }
        ]
    }

    const options = {
        method: 'POST',
        
        body: JSON.stringify(Input),

        headers: {'Content-Type':'application/json'}
    
 };
    
        //stringyfy()method converts js object or value to json string
        //To start a request,call the special function fetch()

app.get('/students', async(req,res) => 
       { 
          const myResponse = await fetch('http://localhost:3000/student',options)
         
          .then(function(res){
           return res.json();

          }).catch(function(error){
            console.log('Error:',error)});

            console.log(myResponse);

            res.send(myResponse);
        });
    

    app.listen(port);