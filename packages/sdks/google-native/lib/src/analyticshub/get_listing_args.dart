// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_analyticshub_v1_get_listing_args_doc}
/// Arguments for getListing.
/// {@endtemplate}
/// {@macro pulumi_analyticshub_v1_get_listing_args_doc}
class GetListingArgs {
  final pulumi.Input<String> dataExchangeId;
  final pulumi.Input<String> listingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetListingArgs].
  /// [dataExchangeId] Required.
  /// [listingId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetListingArgs({
    required pulumi.Output<String> dataExchangeId,
    required pulumi.Output<String> listingId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      dataExchangeId = pulumi.Input.asInput<String>(dataExchangeId),
      listingId = pulumi.Input.asInput<String>(listingId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExchangeId': dataExchangeId,
      'listingId': listingId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetListingArgs.fromMap(Map<String, dynamic> map) {
    return GetListingArgs(
      dataExchangeId: pulumi.Output.create<String>(map['dataExchangeId'] as String),
      listingId: pulumi.Output.create<String>(map['listingId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

