const TodoList=React.createClass({
  render: function(){
   return(   
       <div id="table ">
        <table className="tasks responstable">
          <thead>
            <tr>
              <th>Name </th>
              <th> Description</th>
              <th> Price  </th>
              <th> status </th>                          
            </tr>
           </thead>
           <tbody>
            {this.props.transaction.map((transaction, i) => <TableRow key = {i} data = {transaction} />)}
            <tr>
            <td colSpan="2">Total</td>
<<<<<<< HEAD
            <td> </td>
=======
            <td>
            {
              
              this.props.transaction.(function(trans) {
                return sum + trans.price;
              })
            }
            </td>
>>>>>>> 45e0b4f1cd20e1d3236c9b7ebce65b5e1ee4ffb3
            </tr>
          </tbody>
        </table>
      </div>   
  );
  }
});

class TableRow extends React.Component{
<<<<<<< HEAD
   constructor() {
=======
	 constructor() {
>>>>>>> 45e0b4f1cd20e1d3236c9b7ebce65b5e1ee4ffb3
     super();
     this.state = {
     
     }
   }

   render(){
    return(
     <tr>
      <td>{this.props.data.title}</td>
      <td>{this.props.data.description}</td>
      <td>{this.props.data.price}</td>   
      <td>{this.props.data.status}</td>            
     </tr>
    );
   }

}

