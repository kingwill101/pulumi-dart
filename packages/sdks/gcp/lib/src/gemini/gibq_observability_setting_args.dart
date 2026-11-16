// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gibq_observability_setting_conversational_analytics_setting.dart';

/// {@template pulumi_gemini_gibq_observability_setting_gibq_observability_setting_args_doc}
/// The set of arguments for GibqObservabilitySetting.
/// {@endtemplate}
/// {@macro pulumi_gemini_gibq_observability_setting_gibq_observability_setting_args_doc}
class GibqObservabilitySettingArgs {
  /// Settings for Conversational Analytics, which can be used to enable observability features.
  /// Structure is documented below.
  final pulumi.Input<GibqObservabilitySettingConversationalAnalyticsSetting?>? conversationalAnalyticsSetting;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Id of the requesting object.
  final pulumi.Input<String> gibqObservabilitySettingId;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GibqObservabilitySettingArgs].
  /// [conversationalAnalyticsSetting] Settings for Conversational Analytics, which can be used to enable observability features.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [gibqObservabilitySettingId] Id of the requesting object.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  const GibqObservabilitySettingArgs({
    this.conversationalAnalyticsSetting,
    this.deletionPolicy,
    required this.gibqObservabilitySettingId,
    this.labels,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationalAnalyticsSetting': ?pulumi.Input.mapOptionalInputValue<GibqObservabilitySettingConversationalAnalyticsSetting, Map<String, dynamic>>(conversationalAnalyticsSetting, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'gibqObservabilitySettingId': gibqObservabilitySettingId,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GibqObservabilitySettingArgs.fromMap(Map<String, dynamic> map) {
    return GibqObservabilitySettingArgs(
      conversationalAnalyticsSetting: (() { final guardedValue = map['conversationalAnalyticsSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GibqObservabilitySettingConversationalAnalyticsSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gibqObservabilitySettingId: pulumi.Input.fromValue(map['gibqObservabilitySettingId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
