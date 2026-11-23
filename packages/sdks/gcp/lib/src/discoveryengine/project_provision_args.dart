// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_provision_saas_params.dart';

/// {@template pulumi_discoveryengine_project_provision_project_provision_args_doc}
/// The set of arguments for ProjectProvision.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_project_provision_project_provision_args_doc}
class ProjectProvisionArgs {
  /// Set to `true` to specify that the caller has read and consents to the
  /// [Terms for data use](https://cloud.google.com/retail/data-use-terms).
  final pulumi.Input<bool?>? acceptDataUseTerms;
  /// The version of the [Terms for data use](https://cloud.google.com/retail/data-use-terms)
  /// that the caller has read and consents to. An acceptable version is `2022-11-23`,
  /// and this may change over time.
  final pulumi.Input<String?>? dataUseTermsVersion;
  /// The geographic location in which to provision the project, such as
  /// `global`, `us`, or `eu`.
  final pulumi.Input<String?>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The Gemini Enterprise experience that the project is provisioned for.
  /// `PROVISION_INTENT_SOBI` provisions the project for the new Gemini Enterprise
  /// experience, and `PROVISION_INTENT_LEGACY` provisions it for the classic
  /// Gemini Enterprise experience. If unset, the API chooses the experience.
  /// Changing this field forces a new resource, which calls the provisioning API
  /// again with the new value. Provisioning doesn't remove an experience that the
  /// project was already provisioned for, and the API may reject provisioning a
  /// project that uses the classic experience for the new experience.
  /// Possible values are: `PROVISION_INTENT_SOBI`, `PROVISION_INTENT_LEGACY`.
  final pulumi.Input<String?>? provisionIntent;
  /// Parameters for Gemini Enterprise (Agentspace) provisioning.
  /// Structure is documented below.
  final pulumi.Input<ProjectProvisionSaasParams?>? saasParams;

  /// Creates a new [ProjectProvisionArgs].
  /// [acceptDataUseTerms] Set to `true` to specify that the caller has read and consents to the
  /// [dataUseTermsVersion] The version of the [Terms for data use](https://cloud.google.com/retail/data-use-terms)
  /// [location] The geographic location in which to provision the project, such as
  /// [project] The ID of the project in which the resource belongs.
  /// [provisionIntent] The Gemini Enterprise experience that the project is provisioned for.
  /// [saasParams] Parameters for Gemini Enterprise (Agentspace) provisioning.
  const ProjectProvisionArgs({
    this.acceptDataUseTerms,
    this.dataUseTermsVersion,
    this.location,
    this.project,
    this.provisionIntent,
    this.saasParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptDataUseTerms': ?acceptDataUseTerms,
      'dataUseTermsVersion': ?dataUseTermsVersion,
      'location': ?location,
      'project': ?project,
      'provisionIntent': ?provisionIntent,
      'saasParams': ?pulumi.Input.mapOptionalInputValue<ProjectProvisionSaasParams, Map<String, dynamic>>(saasParams, (value) => value.toMap()),
    };
  }

  factory ProjectProvisionArgs.fromMap(Map<String, dynamic> map) {
    return ProjectProvisionArgs(
      acceptDataUseTerms: (() { final guardedValue = map['acceptDataUseTerms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataUseTermsVersion: (() { final guardedValue = map['dataUseTermsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionIntent: (() { final guardedValue = map['provisionIntent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      saasParams: (() { final guardedValue = map['saasParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectProvisionSaasParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
