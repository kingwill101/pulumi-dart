// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_containers_container.dart';

/// Result data returned by getContainers.
class GetContainersResult {
  /// A `containers` block as defined below.
  final List<GetContainersContainer> containers;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? namePrefix;
  final String storageAccountId;

  /// Creates a new [GetContainersResult].
  /// [containers] A `containers` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [namePrefix] Optional.
  /// [storageAccountId] Required.
  GetContainersResult({
    required this.containers,
    required this.id,
    this.namePrefix,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers':
          pulumi.Input.encodeList<GetContainersContainer, Map<String, dynamic>>(
            containers,
            (value) => value.toMap(),
          ),
      'id': id,
      'namePrefix': ?namePrefix,
      'storageAccountId': storageAccountId,
    };
  }

  factory GetContainersResult.fromMap(Map<String, dynamic> map) {
    return GetContainersResult(
      containers: pulumi.Input.decodeList<GetContainersContainer>(
        map['containers']!,
        (value) => GetContainersContainer.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      namePrefix: (() {
        final guardedValue = map['namePrefix'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      storageAccountId: map['storageAccountId'] as String,
    );
  }
}
