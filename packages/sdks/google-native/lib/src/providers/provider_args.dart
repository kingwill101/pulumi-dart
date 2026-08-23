// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// Additional user-agent string to append to the default one (&lt;prod_name&gt;/&lt;ver&gt;).
  final pulumi.Input<String>? appendUserAgent;
  /// This will disable the Pulumi Partner Name which is used if a custom `partnerName` isn't specified.
  final pulumi.Input<bool>? disablePartnerName;
  /// A Google Partner Name to facilitate partner resource usage attribution.
  final pulumi.Input<String>? partnerName;
  /// The default project to manage resources in. If another project is specified on a resource, it will take precedence.
  final pulumi.Input<String>? project;
  /// The default region to manage resources in. If another region is specified on a regional resource, it will take precedence.
  final pulumi.Input<String>? region;
  /// The default zone to manage resources in. Generally, this zone should be within the default region you specified. If another zone is specified on a zonal resource, it will take precedence.
  final pulumi.Input<String>? zone;

  /// Creates a new [ProviderArgs].
  /// [appendUserAgent] Additional user-agent string to append to the default one (&lt;prod_name&gt;/&lt;ver&gt;).
  /// [disablePartnerName] This will disable the Pulumi Partner Name which is used if a custom `partnerName` isn't specified.
  /// [partnerName] A Google Partner Name to facilitate partner resource usage attribution.
  /// [project] The default project to manage resources in. If another project is specified on a resource, it will take precedence.
  /// [region] The default region to manage resources in. If another region is specified on a regional resource, it will take precedence.
  /// [zone] The default zone to manage resources in. Generally, this zone should be within the default region you specified. If another zone is specified on a zonal resource, it will take precedence.
  const ProviderArgs({
    this.appendUserAgent,
    this.disablePartnerName,
    this.partnerName,
    this.project,
    this.region,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appendUserAgent': ?appendUserAgent,
      'disablePartnerName': ?disablePartnerName,
      'partnerName': ?partnerName,
      'project': ?project,
      'region': ?region,
      'zone': ?zone,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      appendUserAgent: (() { final guardedValue = map['appendUserAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disablePartnerName: (() { final guardedValue = map['disablePartnerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      partnerName: (() { final guardedValue = map['partnerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
