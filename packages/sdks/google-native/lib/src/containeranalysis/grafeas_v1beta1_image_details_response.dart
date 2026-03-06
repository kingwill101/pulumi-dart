// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'derived_response_containeranalysis_v1beta1.dart';

/// Details of an image occurrence.
class GrafeasV1beta1ImageDetailsResponse {
  /// Immutable. The child image derived from the base image.
  final pulumi.Input<DerivedResponseContaineranalysisV1beta1> derivedImage;

  /// Creates a new [GrafeasV1beta1ImageDetailsResponse].
  /// [derivedImage] Immutable. The child image derived from the base image.
  const GrafeasV1beta1ImageDetailsResponse({
    required this.derivedImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'derivedImage': pulumi.Input.mapInputValue<DerivedResponseContaineranalysisV1beta1, Map<String, dynamic>>(derivedImage, (value) => value.toMap()),
    };
  }

  factory GrafeasV1beta1ImageDetailsResponse.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1ImageDetailsResponse(
      derivedImage: pulumi.Input.fromValue(DerivedResponseContaineranalysisV1beta1.fromMap((map['derivedImage']! as Map).cast<String, dynamic>())),
    );
  }
}

