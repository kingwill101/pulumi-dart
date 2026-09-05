// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_service_tags_get_service_tags_args_doc}
/// Arguments for getServiceTags.
/// {@endtemplate}
/// {@macro pulumi_network_get_service_tags_get_service_tags_args_doc}
class GetServiceTagsArgs {
  /// The Azure Region where the Service Tags exists. This value is not used to filter the results but for specifying the region to request. For filtering by region use `locationFilter` instead.  More information can be found here: [Service Tags URL parameters](https://docs.microsoft.com/rest/api/virtualnetwork/servicetags/list#uri-parameters).
  final pulumi.Input<String> location;
  /// Changes the scope of the service tags. Can be any value that is also valid for `location`. If this field is empty then all address prefixes are considered instead of only location specific ones.
  final pulumi.Input<String?>? locationFilter;
  /// The type of the service for which address prefixes will be fetched. Available service tags can be found here: [Available service tags](https://docs.microsoft.com/azure/virtual-network/service-tags-overview#available-service-tags).
  final pulumi.Input<String> service;

  /// Creates a new [GetServiceTagsArgs].
  /// [location] The Azure Region where the Service Tags exists. This value is not used to filter the results but for specifying the region to request. For filtering by region use `locationFilter` instead.  More information can be found here: [Service Tags URL parameters](https://docs.microsoft.com/rest/api/virtualnetwork/servicetags/list#uri-parameters).
  /// [locationFilter] Changes the scope of the service tags. Can be any value that is also valid for `location`. If this field is empty then all address prefixes are considered instead of only location specific ones.
  /// [service] The type of the service for which address prefixes will be fetched. Available service tags can be found here: [Available service tags](https://docs.microsoft.com/azure/virtual-network/service-tags-overview#available-service-tags).
  const GetServiceTagsArgs({
    required this.location,
    this.locationFilter,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'locationFilter': ?locationFilter,
      'service': service,
    };
  }

  factory GetServiceTagsArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceTagsArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      locationFilter: (() { final guardedValue = map['locationFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
