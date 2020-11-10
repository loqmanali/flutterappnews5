class Post {
  String id;
  String title;
  String content;
  String dateWritten;
  String featureImage;
  int votesUp;
  int votesDown;
  List<int> votersUp;
  List<int> votersDown;
  int userId;
  int categoryId;

  Post({
    this.id,
    this.title,
    this.content,
    this.dateWritten,
    this.featureImage,
    this.votesUp,
    this.votesDown,
    this.votersUp,
    this.votersDown,
    this.userId,
    this.categoryId,
  });
}
