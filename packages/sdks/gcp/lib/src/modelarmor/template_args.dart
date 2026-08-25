// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_filter_config.dart';
import 'template_template_metadata.dart';

/// {@template pulumi_modelarmor_template_template_args_doc}
/// The set of arguments for Template.
/// {@endtemplate}
/// {@macro pulumi_modelarmor_template_template_args_doc}
class TemplateArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Filters configuration.
  /// Structure is documented below.
  final pulumi.Input<TemplateFilterConfig> filterConfig;
  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Id of the requesting object
  /// If auto-generating Id server-side, remove this field and
  /// templateId from the methodSignature of Create RPC
  final pulumi.Input<String> templateId;
  /// Message describing TemplateMetadata
  /// Structure is documented below.
  final pulumi.Input<TemplateTemplateMetadata?>? templateMetadata;

  /// Creates a new [TemplateArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [filterConfig] Filters configuration.
  /// [labels] Labels as key value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [templateId] Id of the requesting object
  /// [templateMetadata] Message describing TemplateMetadata
  const TemplateArgs({
    this.deletionPolicy,
    required this.filterConfig,
    this.labels,
    required this.location,
    this.project,
    required this.templateId,
    this.templateMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'filterConfig': pulumi.Input.mapInputValue<TemplateFilterConfig, Map<String, dynamic>>(filterConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'templateId': templateId,
      'templateMetadata': ?pulumi.Input.mapOptionalInputValue<TemplateTemplateMetadata, Map<String, dynamic>>(templateMetadata, (value) => value.toMap()),
    };
  }

  factory TemplateArgs.fromMap(Map<String, dynamic> map) {
    return TemplateArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterConfig: pulumi.Input.fromValue(TemplateFilterConfig.fromMap((map['filterConfig']! as Map).cast<String, dynamic>())),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateId: pulumi.Input.fromValue(map['templateId'] as String),
      templateMetadata: (() { final guardedValue = map['templateMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateTemplateMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
