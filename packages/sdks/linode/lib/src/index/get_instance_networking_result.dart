// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_networking_ipv4.dart';
import 'get_instance_networking_ipv6.dart';

/// Result data returned by getInstanceNetworking.
class GetInstanceNetworkingResult {
  final String id;
  final List<GetInstanceNetworkingIpv4> ipv4s;
  final List<GetInstanceNetworkingIpv6> ipv6s;

  /// The ID of the Linode this address currently belongs to.
  final int linodeId;

  /// Creates a new [GetInstanceNetworkingResult].
  /// [id] Required.
  /// [ipv4s] Required.
  /// [ipv6s] Required.
  /// [linodeId] The ID of the Linode this address currently belongs to.
  GetInstanceNetworkingResult({
    required this.id,
    required this.ipv4s,
    required this.ipv6s,
    required this.linodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ipv4s':
          pulumi.Input.encodeList<
            GetInstanceNetworkingIpv4,
            Map<String, dynamic>
          >(ipv4s, (value) => value.toMap()),
      'ipv6s':
          pulumi.Input.encodeList<
            GetInstanceNetworkingIpv6,
            Map<String, dynamic>
          >(ipv6s, (value) => value.toMap()),
      'linodeId': linodeId,
    };
  }

  factory GetInstanceNetworkingResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkingResult(
      id: map['id'] as String,
      ipv4s: pulumi.Input.decodeList<GetInstanceNetworkingIpv4>(
        map['ipv4s']!,
        (value) => GetInstanceNetworkingIpv4.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      ipv6s: pulumi.Input.decodeList<GetInstanceNetworkingIpv6>(
        map['ipv6s']!,
        (value) => GetInstanceNetworkingIpv6.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      linodeId: map['linodeId'] as int,
    );
  }
}
