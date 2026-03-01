// ignore_for_file: unused_element, unnecessary_cast


/// Represents a Goo package repository. These is added to a repo file that is stored at C:/ProgramData/GooGet/repos/google_osconfig.repo.
class GooRepository {
  /// The name of the repository.
  final String name;
  /// The url of the repository.
  final String url;

  /// Creates a new [GooRepository].
  /// [name] The name of the repository.
  /// [url] The url of the repository.
  GooRepository({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory GooRepository.fromMap(Map<String, dynamic> map) {
    return GooRepository(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }
}

