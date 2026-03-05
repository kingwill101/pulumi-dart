// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An artifact that can be deployed in some runtime.
class Deployable {
  /// Resource URI for the artifact being deployed.
  final pulumi.Input<List<String>>? resourceUri;

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
      resourceUri: (() { final guardedValue = map['resourceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

