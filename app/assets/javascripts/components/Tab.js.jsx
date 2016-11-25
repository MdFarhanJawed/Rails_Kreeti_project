
class Tab extends React.Component{
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
     </tr>
    );
   }

}
export default Tab;

