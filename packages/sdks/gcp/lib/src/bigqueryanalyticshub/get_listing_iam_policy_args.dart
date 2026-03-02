// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigqueryanalyticshub_get_listing_iam_policy_get_listing_iam_policy_args_doc}
/// Arguments for getListingIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigqueryanalyticshub_get_listing_iam_policy_get_listing_iam_policy_args_doc}
class GetListingIamPolicyArgs {
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> dataExchangeId;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> listingId;
  /// The name of the location this data exchange listing.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetListingIamPolicyArgs].
  /// [dataExchangeId] The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. Used to find the parent resource to bind the IAM policy to
  /// [listingId] Used to find the parent resource to bind the IAM policy to
  /// [location] The name of the location this data exchange listing.
  /// [project] The ID of the project in which the resource belongs.
  GetListingIamPolicyArgs({
    required this.dataExchangeId,
    required this.listingId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExchangeId': dataExchangeId,
      'listingId': listingId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetListingIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetListingIamPolicyArgs(
      dataExchangeId: (map['dataExchangeId'] as String).input(),
      listingId: (map['listingId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

