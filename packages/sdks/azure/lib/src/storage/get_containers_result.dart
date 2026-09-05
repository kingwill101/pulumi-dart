// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_containers_container.dart';

/// Result data returned by getContainers.
class GetContainersResult {
  /// A `containers` block as defined below.
  final List<GetContainersContainer>? containers;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? namePrefix;
  final String? storageAccountId;

  /// Creates a new [GetContainersResult].
  /// [containers] A `containers` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [namePrefix] Optional.
  /// [storageAccountId] Optional.
  const GetContainersResult({
    this.containers,
    this.id,
    this.namePrefix,
    this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?(() { final guardedValue = containers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetContainersContainer, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'namePrefix': ?namePrefix,
      'storageAccountId': ?storageAccountId,
    };
  }

  factory GetContainersResult.fromMap(Map<String, dynamic> map) {
    return GetContainersResult(
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetContainersContainer>(guardedValue, (value) => GetContainersContainer.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
