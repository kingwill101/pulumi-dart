// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// Additional user-agent string to append to the default one (<prod_name>/<ver>).
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
  /// [appendUserAgent] Additional user-agent string to append to the default one (<prod_name>/<ver>).
  /// [disablePartnerName] This will disable the Pulumi Partner Name which is used if a custom `partnerName` isn't specified.
  /// [partnerName] A Google Partner Name to facilitate partner resource usage attribution.
  /// [project] The default project to manage resources in. If another project is specified on a resource, it will take precedence.
  /// [region] The default region to manage resources in. If another region is specified on a regional resource, it will take precedence.
  /// [zone] The default zone to manage resources in. Generally, this zone should be within the default region you specified. If another zone is specified on a zonal resource, it will take precedence.
  ProviderArgs({
    pulumi.Output<String>? appendUserAgent,
    pulumi.Output<bool>? disablePartnerName,
    pulumi.Output<String>? partnerName,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? zone,
  }) :
      appendUserAgent = pulumi.Input.asOptionalInput<String>(appendUserAgent),
      disablePartnerName = pulumi.Input.asOptionalInput<bool>(disablePartnerName),
      partnerName = pulumi.Input.asOptionalInput<String>(partnerName),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      zone = pulumi.Input.asOptionalInput<String>(zone);

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
      appendUserAgent: map['appendUserAgent'] == null ? null : pulumi.Output.create<String>(map['appendUserAgent'] as String),
      disablePartnerName: map['disablePartnerName'] == null ? null : pulumi.Output.create<bool>(map['disablePartnerName'] as bool),
      partnerName: map['partnerName'] == null ? null : pulumi.Output.create<String>(map['partnerName'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

