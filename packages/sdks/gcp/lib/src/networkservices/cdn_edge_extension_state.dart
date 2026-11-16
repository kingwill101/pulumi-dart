// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cdn_edge_extension_extension_chain.dart';
import 'cdn_edge_extension_target.dart';

/// Input properties used for looking up and filtering CdnEdgeExtension resources.
class CdnEdgeExtensionState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A human-readable description of the resource.
  final pulumi.Input<String?>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// A set of ordered extension chains that contain the match conditions and extensions to execute.
  /// Match conditions for each extension chain are evaluated in sequence for a given request.
  /// The first extension chain that has a condition that matches the request is executed.
  /// Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  /// Structure is documented below.
  final pulumi.Input<List<CdnEdgeExtensionExtensionChain>?>? extensionChains;
  /// Set of labels associated with the CdnEdgeExtension resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location of the CDN edge extension.
  final pulumi.Input<String?>? location;
  /// Name of the CdnEdgeExtension resource in the following format: projects/{project}/locations/{location}/cdnEdgeExtensions/{cdn_edge_extension}
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Specifies the set of targets to which CdnEdgeExtension should be applied to.
  /// Structure is documented below.
  final pulumi.Input<CdnEdgeExtensionTarget?>? target;

  /// Creates a new [CdnEdgeExtensionState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A human-readable description of the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [extensionChains] A set of ordered extension chains that contain the match conditions and extensions to execute.
  /// [labels] Set of labels associated with the CdnEdgeExtension resource.
  /// [location] The location of the CDN edge extension.
  /// [name] Name of the CdnEdgeExtension resource in the following format: projects/{project}/locations/{location}/cdnEdgeExtensions/{cdn_edge_extension}
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [target] Specifies the set of targets to which CdnEdgeExtension should be applied to.
  const CdnEdgeExtensionState({
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.extensionChains,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'extensionChains': ?pulumi.Input.mapOptionalInputValue<List<CdnEdgeExtensionExtensionChain>, List<Map<String, dynamic>>>(extensionChains, (value) => pulumi.Input.encodeList<CdnEdgeExtensionExtensionChain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'target': ?pulumi.Input.mapOptionalInputValue<CdnEdgeExtensionTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory CdnEdgeExtensionState.fromMap(Map<String, dynamic> map) {
    return CdnEdgeExtensionState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      extensionChains: (() { final guardedValue = map['extensionChains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CdnEdgeExtensionExtensionChain>(guardedValue, (value) => CdnEdgeExtensionExtensionChain.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CdnEdgeExtensionTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
