// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_list_sites_controller_health_summary_args_doc}
/// Arguments for listSitesControllerHealthSummary.
/// {@endtemplate}
/// {@macro pulumi_offazure_list_sites_controller_health_summary_args_doc}
class ListSitesControllerHealthSummaryArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name
  final pulumi.Input<String> siteName;

  /// Creates a new [ListSitesControllerHealthSummaryArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name
  ListSitesControllerHealthSummaryArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> siteName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
    };
  }

  factory ListSitesControllerHealthSummaryArgs.fromMap(Map<String, dynamic> map) {
    return ListSitesControllerHealthSummaryArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      siteName: pulumi.Output.create<String>(map['siteName'] as String),
    );
  }
}

