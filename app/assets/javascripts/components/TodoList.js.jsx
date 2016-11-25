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
            <td> </td>
            </tr>
          </tbody>
        </table>
      </div>   
  );
  }
});

class TableRow extends React.Component{
   constructor() {
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

