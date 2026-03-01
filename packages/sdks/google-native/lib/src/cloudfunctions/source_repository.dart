// ignore_for_file: unused_element, unnecessary_cast


/// Describes SourceRepository, used to represent parameters related to source repository where a function is hosted.
class SourceRepository {
  /// The URL pointing to the hosted repository where the function is defined. There are supported Cloud Source Repository URLs in the following formats: To refer to a specific commit: `https://source.developers.google.com/projects/*/repos/*/revisions/*/paths/*` To refer to a moveable alias (branch): `https://source.developers.google.com/projects/*/repos/*/moveable-aliases/*/paths/*` In particular, to refer to HEAD use `master` moveable alias. To refer to a specific fixed alias (tag): `https://source.developers.google.com/projects/*/repos/*/fixed-aliases/*/paths/*` You may omit `paths/*` if you want to use the main directory.
  final String? url;

  /// Creates a new [SourceRepository].
  /// [url] The URL pointing to the hosted repository where the function is defined. There are supported Cloud Source Repository URLs in the following formats: To refer to a specific commit: `https://source.developers.google.com/projects/*/repos/*/revisions/*/paths/*` To refer to a moveable alias (branch): `https://source.developers.google.com/projects/*/repos/*/moveable-aliases/*/paths/*` In particular, to refer to HEAD use `master` moveable alias. To refer to a specific fixed alias (tag): `https://source.developers.google.com/projects/*/repos/*/fixed-aliases/*/paths/*` You may omit `paths/*` if you want to use the main directory.
  SourceRepository({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory SourceRepository.fromMap(Map<String, dynamic> map) {
    return SourceRepository(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

