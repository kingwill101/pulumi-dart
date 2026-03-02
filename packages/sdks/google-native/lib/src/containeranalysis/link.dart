// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'by_products.dart';
import 'environment.dart';
import 'grafeas_v1beta1_intoto_artifact.dart';

/// This corresponds to an in-toto link.
class Link {
  /// ByProducts are data generated as part of a software supply chain step, but are not the actual result of the step.
  final pulumi.Input<ByProducts>? byproducts;
  /// This field contains the full command executed for the step. This can also be empty if links are generated for operations that aren't directly mapped to a specific command. Each term in the command is an independent string in the list. An example of a command in the in-toto metadata field is: "command": ["git", "clone", "https://github.com/in-toto/demo-project.git"]
  final pulumi.Input<List<String>>? command;
  /// This is a field that can be used to capture information about the environment. It is suggested for this field to contain information that details environment variables, filesystem information, and the present working directory. The recommended structure of this field is: "environment": { "custom_values": { "variables": "", "filesystem": "", "workdir": "", "": "..." } }
  final pulumi.Input<Environment>? environment;
  /// Materials are the supply chain artifacts that go into the step and are used for the operation performed. The key of the map is the path of the artifact and the structure contains the recorded hash information. An example is: "materials": [ { "resource_uri": "foo/bar", "hashes": { "sha256": "ebebf...", : } } ]
  final pulumi.Input<List<GrafeasV1beta1IntotoArtifact>>? materials;
  /// Products are the supply chain artifacts generated as a result of the step. The structure is identical to that of materials.
  final pulumi.Input<List<GrafeasV1beta1IntotoArtifact>>? products;

  /// Creates a new [Link].
  /// [byproducts] ByProducts are data generated as part of a software supply chain step, but are not the actual result of the step.
  /// [command] This field contains the full command executed for the step. This can also be empty if links are generated for operations that aren't directly mapped to a specific command. Each term in the command is an independent string in the list. An example of a command in the in-toto metadata field is: "command": ["git", "clone", "https://github.com/in-toto/demo-project.git"]
  /// [environment] This is a field that can be used to capture information about the environment. It is suggested for this field to contain information that details environment variables, filesystem information, and the present working directory. The recommended structure of this field is: "environment": { "custom_values": { "variables": "", "filesystem": "", "workdir": "", "": "..." } }
  /// [materials] Materials are the supply chain artifacts that go into the step and are used for the operation performed. The key of the map is the path of the artifact and the structure contains the recorded hash information. An example is: "materials": [ { "resource_uri": "foo/bar", "hashes": { "sha256": "ebebf...", : } } ]
  /// [products] Products are the supply chain artifacts generated as a result of the step. The structure is identical to that of materials.
  Link({
    this.byproducts,
    this.command,
    this.environment,
    this.materials,
    this.products,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'byproducts': ?pulumi.Input.mapOptionalInputValue<ByProducts, Map<String, dynamic>>(byproducts, (value) => value.toMap()),
      'command': ?command,
      'environment': ?pulumi.Input.mapOptionalInputValue<Environment, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'materials': ?pulumi.Input.mapOptionalInputValue<List<GrafeasV1beta1IntotoArtifact>, List<Map<String, dynamic>>>(materials, (value) => pulumi.Input.encodeList<GrafeasV1beta1IntotoArtifact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'products': ?pulumi.Input.mapOptionalInputValue<List<GrafeasV1beta1IntotoArtifact>, List<Map<String, dynamic>>>(products, (value) => pulumi.Input.encodeList<GrafeasV1beta1IntotoArtifact, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Link.fromMap(Map<String, dynamic> map) {
    return Link(
      byproducts: map['byproducts'] == null ? null : (ByProducts.fromMap((map['byproducts']! as Map).cast<String, dynamic>())).input(),
      command: map['command'] == null ? null : ((map['command']! as List).cast<String>()).input(),
      environment: map['environment'] == null ? null : (Environment.fromMap((map['environment']! as Map).cast<String, dynamic>())).input(),
      materials: map['materials'] == null ? null : (pulumi.Input.decodeList<GrafeasV1beta1IntotoArtifact>(map['materials']!, (value) => GrafeasV1beta1IntotoArtifact.fromMap((value as Map).cast<String, dynamic>()))).input(),
      products: map['products'] == null ? null : (pulumi.Input.decodeList<GrafeasV1beta1IntotoArtifact>(map['products']!, (value) => GrafeasV1beta1IntotoArtifact.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

