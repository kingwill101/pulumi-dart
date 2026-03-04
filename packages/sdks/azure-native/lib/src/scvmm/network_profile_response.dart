// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interfaces_response.dart';

/// Defines the resource properties.
class NetworkProfileResponse {
  /// Gets or sets the list of network interfaces associated with the virtual machine.
  final pulumi.Input<List<NetworkInterfacesResponse>>? networkInterfaces;

  /// Creates a new [NetworkProfileResponse].
  /// [networkInterfaces] Gets or sets the list of network interfaces associated with the virtual machine.
  NetworkProfileResponse({this.networkInterfaces});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaces':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInterfacesResponse>,
            List<Map<String, dynamic>>
          >(
            networkInterfaces,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInterfacesResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory NetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return NetworkProfileResponse(
      networkInterfaces: (() {
        final guardedValue = map['networkInterfaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkInterfacesResponse>(
            guardedValue,
            (value) => NetworkInterfacesResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
