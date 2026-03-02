// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_artifact_type.dart';

/// Application definition artifact.
class ApplicationDefinitionArtifact {
  /// The managed application definition artifact name.
  final pulumi.Input<String> name;
  /// The managed application definition artifact type.
  final pulumi.Input<ApplicationArtifactType> type;
  /// The managed application definition artifact blob uri.
  final pulumi.Input<String> uri;

  /// Creates a new [ApplicationDefinitionArtifact].
  /// [name] The managed application definition artifact name.
  /// [type] The managed application definition artifact type.
  /// [uri] The managed application definition artifact blob uri.
  ApplicationDefinitionArtifact({
    required this.name,
    required this.type,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': pulumi.Input.mapInputValue<ApplicationArtifactType, String>(type, (value) => value.value),
      'uri': uri,
    };
  }

  factory ApplicationDefinitionArtifact.fromMap(Map<String, dynamic> map) {
    return ApplicationDefinitionArtifact(
      name: (map['name'] as String).input(),
      type: (ApplicationArtifactType.fromValue(map['type'] as String)).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

