// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance_config_interface_ipv6_range.dart';
import 'get_instances_instance_config_interface_ipv6_slaac.dart';

class GetInstancesInstanceConfigInterfaceIpv6 {
  /// If true, connections from the interface to IPv6 addresses outside the VPC, and connections from IPv6 addresses outside the VPC to the interface will be permitted. (Default: `false`)
  final pulumi.Input<bool> isPublic;

  /// A prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  final pulumi.Input<List<GetInstancesInstanceConfigInterfaceIpv6Range>> ranges;

  /// An array of SLAAC prefixes to use for this interface.
  final pulumi.Input<List<GetInstancesInstanceConfigInterfaceIpv6Slaac>> slaacs;

  /// Creates a new [GetInstancesInstanceConfigInterfaceIpv6].
  /// [isPublic] If true, connections from the interface to IPv6 addresses outside the VPC, and connections from IPv6 addresses outside the VPC to the interface will be permitted. (Default: `false`)
  /// [ranges] A prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  /// [slaacs] An array of SLAAC prefixes to use for this interface.
  GetInstancesInstanceConfigInterfaceIpv6({
    required this.isPublic,
    required this.ranges,
    required this.slaacs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isPublic': isPublic,
      'ranges':
          pulumi.Input.mapInputValue<
            List<GetInstancesInstanceConfigInterfaceIpv6Range>,
            List<Map<String, dynamic>>
          >(
            ranges,
            (value) =>
                pulumi.Input.encodeList<
                  GetInstancesInstanceConfigInterfaceIpv6Range,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'slaacs':
          pulumi.Input.mapInputValue<
            List<GetInstancesInstanceConfigInterfaceIpv6Slaac>,
            List<Map<String, dynamic>>
          >(
            slaacs,
            (value) =>
                pulumi.Input.encodeList<
                  GetInstancesInstanceConfigInterfaceIpv6Slaac,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetInstancesInstanceConfigInterfaceIpv6.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstancesInstanceConfigInterfaceIpv6(
      isPublic: pulumi.Input.fromValue(map['isPublic'] as bool),
      ranges: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetInstancesInstanceConfigInterfaceIpv6Range>(
          map['ranges']!,
          (value) => GetInstancesInstanceConfigInterfaceIpv6Range.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      slaacs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetInstancesInstanceConfigInterfaceIpv6Slaac>(
          map['slaacs']!,
          (value) => GetInstancesInstanceConfigInterfaceIpv6Slaac.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
