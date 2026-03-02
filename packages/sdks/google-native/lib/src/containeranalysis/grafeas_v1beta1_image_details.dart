// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'derived_containeranalysis_v1beta1.dart';

/// Details of an image occurrence.
class GrafeasV1beta1ImageDetails {
  /// Immutable. The child image derived from the base image.
  final pulumi.Input<DerivedContaineranalysisV1beta1> derivedImage;

  /// Creates a new [GrafeasV1beta1ImageDetails].
  /// [derivedImage] Immutable. The child image derived from the base image.
  GrafeasV1beta1ImageDetails({
    required this.derivedImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'derivedImage': pulumi.Input.mapInputValue<DerivedContaineranalysisV1beta1, Map<String, dynamic>>(derivedImage, (value) => value.toMap()),
    };
  }

  factory GrafeasV1beta1ImageDetails.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1ImageDetails(
      derivedImage: (DerivedContaineranalysisV1beta1.fromMap((map['derivedImage'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

