class NoteModel {
  final String title;
  final String subtitle;
  final DateTime date;
  final int color ;

  NoteModel(this.color, {
    required this.title,
    required this.subtitle,
    required this.date,
  });
}