// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_sub_request_patch.dart';
import 'exact_device_request_patch.dart';

/// DeviceRequest is a request for devices required for a claim. This is typically a request for a single resource like a device, but can also ask for several identical devices. With FirstAvailable it is also possible to provide a prioritized list of requests.
class DeviceRequestPatch {
  /// Exactly specifies the details for a single request that must be met exactly for the request to be satisfied.
  ///
  /// One of Exactly or FirstAvailable must be set.
  final pulumi.Input<ExactDeviceRequestPatch>? exactly;
  /// FirstAvailable contains subrequests, of which exactly one will be selected by the scheduler. It tries to satisfy them in the order in which they are listed here. So if there are two entries in the list, the scheduler will only check the second one if it determines that the first one can not be used.
  ///
  /// DRA does not yet implement scoring, so the scheduler will select the first set of devices that satisfies all the requests in the claim. And if the requirements can be satisfied on more than one node, other scheduling features will determine which node is chosen. This means that the set of devices allocated to a claim might not be the optimal set available to the cluster. Scoring will be implemented later.
  final pulumi.Input<List<DeviceSubRequestPatch>>? firstAvailable;
  /// Name can be used to reference this request in a pod.spec.containers[].resources.claims entry and in a constraint of the claim.
  ///
  /// References using the name in the DeviceRequest will uniquely identify a request when the Exactly field is set. When the FirstAvailable field is set, a reference to the name of the DeviceRequest will match whatever subrequest is chosen by the scheduler.
  ///
  /// Must be a DNS label.
  final pulumi.Input<String>? name;

  /// Creates a new [DeviceRequestPatch].
  /// [exactly] Exactly specifies the details for a single request that must be met exactly for the request to be satisfied.
  /// [firstAvailable] FirstAvailable contains subrequests, of which exactly one will be selected by the scheduler. It tries to satisfy them in the order in which they are listed here. So if there are two entries in the list, the scheduler will only check the second one if it determines that the first one can not be used.
  /// [name] Name can be used to reference this request in a pod.spec.containers[].resources.claims entry and in a constraint of the claim.
  DeviceRequestPatch({
    this.exactly,
    this.firstAvailable,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactly': ?pulumi.Input.mapOptionalInputValue<ExactDeviceRequestPatch, Map<String, dynamic>>(exactly, (value) => value.toMap()),
      'firstAvailable': ?pulumi.Input.mapOptionalInputValue<List<DeviceSubRequestPatch>, List<Map<String, dynamic>>>(firstAvailable, (value) => pulumi.Input.encodeList<DeviceSubRequestPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory DeviceRequestPatch.fromMap(Map<String, dynamic> map) {
    return DeviceRequestPatch(
      exactly: (() { final guardedValue = map['exactly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExactDeviceRequestPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      firstAvailable: (() { final guardedValue = map['firstAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceSubRequestPatch>(guardedValue, (value) => DeviceSubRequestPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

