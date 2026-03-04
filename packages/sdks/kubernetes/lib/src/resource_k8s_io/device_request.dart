// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_sub_request.dart';
import 'exact_device_request.dart';

/// DeviceRequest is a request for devices required for a claim. This is typically a request for a single resource like a device, but can also ask for several identical devices. With FirstAvailable it is also possible to provide a prioritized list of requests.
class DeviceRequest {
  /// Exactly specifies the details for a single request that must be met exactly for the request to be satisfied.
  ///
  /// One of Exactly or FirstAvailable must be set.
  final pulumi.Input<ExactDeviceRequest>? exactly;

  /// FirstAvailable contains subrequests, of which exactly one will be selected by the scheduler. It tries to satisfy them in the order in which they are listed here. So if there are two entries in the list, the scheduler will only check the second one if it determines that the first one can not be used.
  ///
  /// DRA does not yet implement scoring, so the scheduler will select the first set of devices that satisfies all the requests in the claim. And if the requirements can be satisfied on more than one node, other scheduling features will determine which node is chosen. This means that the set of devices allocated to a claim might not be the optimal set available to the cluster. Scoring will be implemented later.
  final pulumi.Input<List<DeviceSubRequest>>? firstAvailable;

  /// Name can be used to reference this request in a pod.spec.containers[].resources.claims entry and in a constraint of the claim.
  ///
  /// References using the name in the DeviceRequest will uniquely identify a request when the Exactly field is set. When the FirstAvailable field is set, a reference to the name of the DeviceRequest will match whatever subrequest is chosen by the scheduler.
  ///
  /// Must be a DNS label.
  final pulumi.Input<String> name;

  /// Creates a new [DeviceRequest].
  /// [exactly] Exactly specifies the details for a single request that must be met exactly for the request to be satisfied.
  /// [firstAvailable] FirstAvailable contains subrequests, of which exactly one will be selected by the scheduler. It tries to satisfy them in the order in which they are listed here. So if there are two entries in the list, the scheduler will only check the second one if it determines that the first one can not be used.
  /// [name] Name can be used to reference this request in a pod.spec.containers[].resources.claims entry and in a constraint of the claim.
  DeviceRequest({this.exactly, this.firstAvailable, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactly':
          ?pulumi.Input.mapOptionalInputValue<
            ExactDeviceRequest,
            Map<String, dynamic>
          >(exactly, (value) => value.toMap()),
      'firstAvailable':
          ?pulumi.Input.mapOptionalInputValue<
            List<DeviceSubRequest>,
            List<Map<String, dynamic>>
          >(
            firstAvailable,
            (value) =>
                pulumi.Input.encodeList<DeviceSubRequest, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'name': name,
    };
  }

  factory DeviceRequest.fromMap(Map<String, dynamic> map) {
    return DeviceRequest(
      exactly: (() {
        final guardedValue = map['exactly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExactDeviceRequest.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      firstAvailable: (() {
        final guardedValue = map['firstAvailable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DeviceSubRequest>(
            guardedValue,
            (value) => DeviceSubRequest.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
