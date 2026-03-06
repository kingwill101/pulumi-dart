// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_rule.dart';
import 'signing_key.dart';

/// This contains the fields corresponding to the definition of a software supply chain step in an in-toto layout. This information goes into a Grafeas note.
class InToto {
  /// This field contains the expected command used to perform the step.
  final pulumi.Input<List<String>>? expectedCommand;
  /// The following fields contain in-toto artifact rules identifying the artifacts that enter this supply chain step, and exit the supply chain step, i.e. materials and products of the step.
  final pulumi.Input<List<ArtifactRule>>? expectedMaterials;
  final pulumi.Input<List<ArtifactRule>>? expectedProducts;
  /// This field contains the public keys that can be used to verify the signatures on the step metadata.
  final pulumi.Input<List<SigningKey>>? signingKeys;
  /// This field identifies the name of the step in the supply chain.
  final pulumi.Input<String>? stepName;
  /// This field contains a value that indicates the minimum number of keys that need to be used to sign the step's in-toto link.
  final pulumi.Input<String>? threshold;

  /// Creates a new [InToto].
  /// [expectedCommand] This field contains the expected command used to perform the step.
  /// [expectedMaterials] The following fields contain in-toto artifact rules identifying the artifacts that enter this supply chain step, and exit the supply chain step, i.e. materials and products of the step.
  /// [expectedProducts] Optional.
  /// [signingKeys] This field contains the public keys that can be used to verify the signatures on the step metadata.
  /// [stepName] This field identifies the name of the step in the supply chain.
  /// [threshold] This field contains a value that indicates the minimum number of keys that need to be used to sign the step's in-toto link.
  const InToto({
    this.expectedCommand,
    this.expectedMaterials,
    this.expectedProducts,
    this.signingKeys,
    this.stepName,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expectedCommand': ?expectedCommand,
      'expectedMaterials': ?pulumi.Input.mapOptionalInputValue<List<ArtifactRule>, List<Map<String, dynamic>>>(expectedMaterials, (value) => pulumi.Input.encodeList<ArtifactRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expectedProducts': ?pulumi.Input.mapOptionalInputValue<List<ArtifactRule>, List<Map<String, dynamic>>>(expectedProducts, (value) => pulumi.Input.encodeList<ArtifactRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'signingKeys': ?pulumi.Input.mapOptionalInputValue<List<SigningKey>, List<Map<String, dynamic>>>(signingKeys, (value) => pulumi.Input.encodeList<SigningKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stepName': ?stepName,
      'threshold': ?threshold,
    };
  }

  factory InToto.fromMap(Map<String, dynamic> map) {
    return InToto(
      expectedCommand: (() { final guardedValue = map['expectedCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      expectedMaterials: (() { final guardedValue = map['expectedMaterials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ArtifactRule>(guardedValue, (value) => ArtifactRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      expectedProducts: (() { final guardedValue = map['expectedProducts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ArtifactRule>(guardedValue, (value) => ArtifactRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      signingKeys: (() { final guardedValue = map['signingKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SigningKey>(guardedValue, (value) => SigningKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stepName: (() { final guardedValue = map['stepName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threshold: (() { final guardedValue = map['threshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

