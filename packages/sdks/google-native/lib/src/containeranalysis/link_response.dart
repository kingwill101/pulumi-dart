// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'by_products_response.dart';
import 'environment_response.dart';
import 'grafeas_v1beta1_intoto_artifact_response.dart';

/// This corresponds to an in-toto link.
class LinkResponse {
  /// ByProducts are data generated as part of a software supply chain step, but are not the actual result of the step.
  final pulumi.Input<ByProductsResponse> byproducts;
  /// This field contains the full command executed for the step. This can also be empty if links are generated for operations that aren't directly mapped to a specific command. Each term in the command is an independent string in the list. An example of a command in the in-toto metadata field is: "command": ["git", "clone", "https://github.com/in-toto/demo-project.git"]
  final pulumi.Input<List<String>> command;
  /// This is a field that can be used to capture information about the environment. It is suggested for this field to contain information that details environment variables, filesystem information, and the present working directory. The recommended structure of this field is: "environment": { "custom_values": { "variables": "", "filesystem": "", "workdir": "", "": "..." } }
  final pulumi.Input<EnvironmentResponse> environment;
  /// Materials are the supply chain artifacts that go into the step and are used for the operation performed. The key of the map is the path of the artifact and the structure contains the recorded hash information. An example is: "materials": [ { "resource_uri": "foo/bar", "hashes": { "sha256": "ebebf...", : } } ]
  final pulumi.Input<List<GrafeasV1beta1IntotoArtifactResponse>> materials;
  /// Products are the supply chain artifacts generated as a result of the step. The structure is identical to that of materials.
  final pulumi.Input<List<GrafeasV1beta1IntotoArtifactResponse>> products;

  /// Creates a new [LinkResponse].
  /// [byproducts] ByProducts are data generated as part of a software supply chain step, but are not the actual result of the step.
  /// [command] This field contains the full command executed for the step. This can also be empty if links are generated for operations that aren't directly mapped to a specific command. Each term in the command is an independent string in the list. An example of a command in the in-toto metadata field is: "command": ["git", "clone", "https://github.com/in-toto/demo-project.git"]
  /// [environment] This is a field that can be used to capture information about the environment. It is suggested for this field to contain information that details environment variables, filesystem information, and the present working directory. The recommended structure of this field is: "environment": { "custom_values": { "variables": "", "filesystem": "", "workdir": "", "": "..." } }
  /// [materials] Materials are the supply chain artifacts that go into the step and are used for the operation performed. The key of the map is the path of the artifact and the structure contains the recorded hash information. An example is: "materials": [ { "resource_uri": "foo/bar", "hashes": { "sha256": "ebebf...", : } } ]
  /// [products] Products are the supply chain artifacts generated as a result of the step. The structure is identical to that of materials.
  const LinkResponse({
    required this.byproducts,
    required this.command,
    required this.environment,
    required this.materials,
    required this.products,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'byproducts': pulumi.Input.mapInputValue<ByProductsResponse, Map<String, dynamic>>(byproducts, (value) => value.toMap()),
      'command': command,
      'environment': pulumi.Input.mapInputValue<EnvironmentResponse, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'materials': pulumi.Input.mapInputValue<List<GrafeasV1beta1IntotoArtifactResponse>, List<Map<String, dynamic>>>(materials, (value) => pulumi.Input.encodeList<GrafeasV1beta1IntotoArtifactResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'products': pulumi.Input.mapInputValue<List<GrafeasV1beta1IntotoArtifactResponse>, List<Map<String, dynamic>>>(products, (value) => pulumi.Input.encodeList<GrafeasV1beta1IntotoArtifactResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LinkResponse.fromMap(Map<String, dynamic> map) {
    return LinkResponse(
      byproducts: pulumi.Input.fromValue(ByProductsResponse.fromMap((map['byproducts']! as Map).cast<String, dynamic>())),
      command: pulumi.Input.fromValue((map['command'] as List).cast<String>()),
      environment: pulumi.Input.fromValue(EnvironmentResponse.fromMap((map['environment']! as Map).cast<String, dynamic>())),
      materials: pulumi.Input.fromValue(pulumi.Input.decodeList<GrafeasV1beta1IntotoArtifactResponse>(map['materials']!, (value) => GrafeasV1beta1IntotoArtifactResponse.fromMap((value as Map).cast<String, dynamic>()))),
      products: pulumi.Input.fromValue(pulumi.Input.decodeList<GrafeasV1beta1IntotoArtifactResponse>(map['products']!, (value) => GrafeasV1beta1IntotoArtifactResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

