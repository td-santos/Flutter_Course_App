class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course({
    this.author,
    this.authorImg,
    this.title,
    this.imageUrl,
  });

  static List<Course> generateCourses(){
    return [
      Course(
        author: 'Marco Ranza',
        authorImg: 'https://i.imgur.com/yW0v5EP.jpg',
        title: 'Concept',
        imageUrl: 'assets/images/image_1.jpg'
      ),

      Course(
        author: 'Ana Machado',
        authorImg: 'https://i.pinimg.com/originals/9c/1f/42/9c1f425a3745f63bd0bbb48f160ebf7a.jpg',
        title: 'Composition',
        imageUrl: 'assets/images/image_2.jpg'
      ),

      Course(
        author: 'Ricardo Felix',
        authorImg: 'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg',
        title: 'Digital Painter',
        imageUrl: 'assets/images/image_3.jpg'
      ),

      Course(
        author: 'Luis Orla',
        authorImg: 'https://i.imgur.com/yW0v5EP.jpg',
        title: '3D Art',
        imageUrl: 'assets/images/image_4.jpg'
      ),

      Course(
        author: 'Felipe Zilo',
        authorImg: 'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg',
        title: 'Layers',
        imageUrl: 'assets/images/image_5.jpg'
      ),
    ];
  }
}
