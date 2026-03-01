// ignore_for_file: unused_element, unnecessary_cast


/// An artifact that can be deployed in some runtime.
class Deployable {
  /// Resource URI for the artifact being deployed.
  final List<String>? resourceUri;

  /// Creates a new [Deployable].
  /// [resourceUri] Resource URI for the artifact being deployed.
  Deployable({
    this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': ?resourceUri,
    };
  }

  factory Deployable.fromMap(Map<String, dynamic> map) {
    return Deployable(
      resourceUri: map['resourceUri'] == null ? null : (map['resourceUri'] as List).cast<String>(),
    );
  }
}

