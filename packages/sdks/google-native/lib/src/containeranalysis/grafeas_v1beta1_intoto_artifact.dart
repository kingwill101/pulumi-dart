// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_hashes.dart';

class GrafeasV1beta1IntotoArtifact {
  final pulumi.Input<ArtifactHashes>? hashes;
  final pulumi.Input<String>? resourceUri;

  /// Creates a new [GrafeasV1beta1IntotoArtifact].
  /// [hashes] Optional.
  /// [resourceUri] Optional.
  GrafeasV1beta1IntotoArtifact({this.hashes, this.resourceUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hashes':
          ?pulumi.Input.mapOptionalInputValue<
            ArtifactHashes,
            Map<String, dynamic>
          >(hashes, (value) => value.toMap()),
      'resourceUri': ?resourceUri,
    };
  }

  factory GrafeasV1beta1IntotoArtifact.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1IntotoArtifact(
      hashes: (() {
        final guardedValue = map['hashes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ArtifactHashes.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      resourceUri: (() {
        final guardedValue = map['resourceUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
