// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_hashes_response.dart';

class GrafeasV1beta1IntotoArtifactResponse {
  final pulumi.Input<ArtifactHashesResponse> hashes;
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GrafeasV1beta1IntotoArtifactResponse].
  /// [hashes] Required.
  /// [resourceUri] Required.
  GrafeasV1beta1IntotoArtifactResponse({
    required this.hashes,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hashes':
          pulumi.Input.mapInputValue<
            ArtifactHashesResponse,
            Map<String, dynamic>
          >(hashes, (value) => value.toMap()),
      'resourceUri': resourceUri,
    };
  }

  factory GrafeasV1beta1IntotoArtifactResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GrafeasV1beta1IntotoArtifactResponse(
      hashes: pulumi.Input.fromValue(
        ArtifactHashesResponse.fromMap(
          (map['hashes']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}
