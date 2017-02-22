import React from 'react';
import Modal from 'react-modal';

class StepForm extends React.Component {
  constructor(props) {
    super(props);
    // if (this.props.project) {
      this.state = this.props.project;

      // { title: this.props.project.title, description: this.props.description, cover_img: this.props.project.cover_img, imageUrl: null };
    // }
    this.handleSubmit = this.handleSubmit.bind(this);
    this.updateFile = this.updateFile.bind(this);
    this.updateField = this.updateField.bind(this);
  }

  // componentDidMount() {
  //   const id = parseInt(this.props.params.projectId);
  //   // this.props.fetchProject(id);
  // }

  // componentWillReceiveProps(nextProps) {
  //   if (this.props.params.projectId !== nextProps.params.projectId) {
  //     this.props.fetchProject(parseInt(nextProps.params.projectId));
  //   }
  // }

  updateFile(e) {
    return (e) => {
      let file = e.currentTarget.files[0];
      let reader = new FileReader();
      reader.onloadend = () => {
        this.setState( {imageUrl: reader.result, cover_img: file} );
      };
      if (file) {
        reader.readAsDataURL(file);
      } else {
        this.setState({ imageUrl: null, cover_img: null});
      }
    };
  }

  updateField(field) {
    return (e) => {
      e.preventDefault();
      this.setState({ [field]: e.target.value });
    };
  }

  handleSubmit(e) {
    e.preventDefault();
    let formData = new FormData();
    formData.append("project[cover_img]", this.state.cover_img);
    formData.append("project[title]", this.state.title);
    formData.append("project[description]", this.state.description);
    formData.append("project[id]", this.props.project.id);
    this.props.updateProject(formData);
  }

  render () {
    if (this.props.project === undefined) return null;

    return (
      <div className="update-outer">
        <div className='update-inner'>
          <form onSubmit={this.handleSubmit} >
            <div className="project-form">
              <div className="project-inner">
                  <input type="file" className="add-file" onChange={this.updateFile()}/>

                <label>Intro:
                  <input type="text" onChange={this.updateField('title')} value={this.state.title} />
                </label>
                <label>Description:
                  <textarea name="name"onChange={this.updateField('description')} value={this.state.description}></textarea>
                </label>

              </div>
              <section className="publish">
                <input type="Submit" defaultValue="save"/>
              </section>
            </div>
          </form>
        </div>
      </div>
    );
  }
}

export default StepForm;
{/* <input type="text" name="" value=""> */}
// enter title
//
// id                     :integer          not null, primary key
// #  title                  :string           not null
// #  description            :text             not null
// #  user_id                :integer          not null
// #  created_at             :datetime         not null
// #  updated_at             :datetime         not null
// #  cover_img_file_name    :string
// #  cover_img_content_type :string
// #  cover_img_file_size    :integer
// #  cover_img_updated_at   :datetime
// #