// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fingerprint_containeranalysis_v1alpha1.dart';
import 'layer_containeranalysis_v1alpha1.dart';

/// Derived describes the derived image portion (Occurrence) of the DockerImage relationship. This image would be produced from a Dockerfile with FROM .
class Derived {
  /// The fingerprint of the derived image.
  final pulumi.Input<FingerprintContaineranalysisV1alpha1>? fingerprint;

  /// This contains layer-specific metadata, if populated it has length "distance" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
  final pulumi.Input<List<LayerContaineranalysisV1alpha1>>? layerInfo;

  /// Creates a new [Derived].
  /// [fingerprint] The fingerprint of the derived image.
  /// [layerInfo] This contains layer-specific metadata, if populated it has length "distance" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
  Derived({this.fingerprint, this.layerInfo});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint':
          ?pulumi.Input.mapOptionalInputValue<
            FingerprintContaineranalysisV1alpha1,
            Map<String, dynamic>
          >(fingerprint, (value) => value.toMap()),
      'layerInfo':
          ?pulumi.Input.mapOptionalInputValue<
            List<LayerContaineranalysisV1alpha1>,
            List<Map<String, dynamic>>
          >(
            layerInfo,
            (value) =>
                pulumi.Input.encodeList<
                  LayerContaineranalysisV1alpha1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory Derived.fromMap(Map<String, dynamic> map) {
    return Derived(
      fingerprint: (() {
        final guardedValue = map['fingerprint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FingerprintContaineranalysisV1alpha1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      layerInfo: (() {
        final guardedValue = map['layerInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LayerContaineranalysisV1alpha1>(
            guardedValue,
            (value) => LayerContaineranalysisV1alpha1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
