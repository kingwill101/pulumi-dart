// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_get_hyper_vsite_args_doc}
/// Arguments for getHyperVSite.
/// {@endtemplate}
/// {@macro pulumi_offazure_get_hyper_vsite_args_doc}
class GetHyperVSiteArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name.
  final pulumi.Input<String> siteName;

  /// Creates a new [GetHyperVSiteArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name.
  GetHyperVSiteArgs({
    required this.resourceGroupName,
    required this.siteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
    };
  }

  factory GetHyperVSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetHyperVSiteArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      siteName: (map['siteName'] as String).input(),
    );
  }
}

