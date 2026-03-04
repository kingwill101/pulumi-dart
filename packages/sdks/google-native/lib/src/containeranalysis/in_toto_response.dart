// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_rule_response.dart';
import 'signing_key_response.dart';

/// This contains the fields corresponding to the definition of a software supply chain step in an in-toto layout. This information goes into a Grafeas note.
class InTotoResponse {
  /// This field contains the expected command used to perform the step.
  final pulumi.Input<List<String>> expectedCommand;

  /// The following fields contain in-toto artifact rules identifying the artifacts that enter this supply chain step, and exit the supply chain step, i.e. materials and products of the step.
  final pulumi.Input<List<ArtifactRuleResponse>> expectedMaterials;
  final pulumi.Input<List<ArtifactRuleResponse>> expectedProducts;

  /// This field contains the public keys that can be used to verify the signatures on the step metadata.
  final pulumi.Input<List<SigningKeyResponse>> signingKeys;

  /// This field identifies the name of the step in the supply chain.
  final pulumi.Input<String> stepName;

  /// This field contains a value that indicates the minimum number of keys that need to be used to sign the step's in-toto link.
  final pulumi.Input<String> threshold;

  /// Creates a new [InTotoResponse].
  /// [expectedCommand] This field contains the expected command used to perform the step.
  /// [expectedMaterials] The following fields contain in-toto artifact rules identifying the artifacts that enter this supply chain step, and exit the supply chain step, i.e. materials and products of the step.
  /// [expectedProducts] Required.
  /// [signingKeys] This field contains the public keys that can be used to verify the signatures on the step metadata.
  /// [stepName] This field identifies the name of the step in the supply chain.
  /// [threshold] This field contains a value that indicates the minimum number of keys that need to be used to sign the step's in-toto link.
  InTotoResponse({
    required this.expectedCommand,
    required this.expectedMaterials,
    required this.expectedProducts,
    required this.signingKeys,
    required this.stepName,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expectedCommand': expectedCommand,
      'expectedMaterials':
          pulumi.Input.mapInputValue<
            List<ArtifactRuleResponse>,
            List<Map<String, dynamic>>
          >(
            expectedMaterials,
            (value) =>
                pulumi.Input.encodeList<
                  ArtifactRuleResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'expectedProducts':
          pulumi.Input.mapInputValue<
            List<ArtifactRuleResponse>,
            List<Map<String, dynamic>>
          >(
            expectedProducts,
            (value) =>
                pulumi.Input.encodeList<
                  ArtifactRuleResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'signingKeys':
          pulumi.Input.mapInputValue<
            List<SigningKeyResponse>,
            List<Map<String, dynamic>>
          >(
            signingKeys,
            (value) =>
                pulumi.Input.encodeList<
                  SigningKeyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'stepName': stepName,
      'threshold': threshold,
    };
  }

  factory InTotoResponse.fromMap(Map<String, dynamic> map) {
    return InTotoResponse(
      expectedCommand: pulumi.Input.fromValue(
        (map['expectedCommand'] as List).cast<String>(),
      ),
      expectedMaterials: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ArtifactRuleResponse>(
          map['expectedMaterials']!,
          (value) => ArtifactRuleResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      expectedProducts: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ArtifactRuleResponse>(
          map['expectedProducts']!,
          (value) => ArtifactRuleResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      signingKeys: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SigningKeyResponse>(
          map['signingKeys']!,
          (value) => SigningKeyResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      stepName: pulumi.Input.fromValue(map['stepName'] as String),
      threshold: pulumi.Input.fromValue(map['threshold'] as String),
    );
  }
}
