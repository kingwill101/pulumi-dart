// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_storage_box_subaccount_get_storage_box_subaccount_args_doc}
/// Arguments for getStorageBoxSubaccount.
/// {@endtemplate}
/// {@macro pulumi_index_get_storage_box_subaccount_get_storage_box_subaccount_args_doc}
class GetStorageBoxSubaccountArgs {
  /// ID of the Storage Box Subaccount.
  final pulumi.Input<int>? id;
  /// Name of the Storage Box Subaccount.
  final pulumi.Input<String>? name;
  /// ID of the Storage Box.
  final pulumi.Input<int> storageBoxId;
  /// Username of the Storage Box Subaccount.
  final pulumi.Input<String>? username;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetStorageBoxSubaccountArgs].
  /// [id] ID of the Storage Box Subaccount.
  /// [name] Name of the Storage Box Subaccount.
  /// [storageBoxId] ID of the Storage Box.
  /// [username] Username of the Storage Box Subaccount.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  GetStorageBoxSubaccountArgs({
    pulumi.Output<int>? id,
    pulumi.Output<String>? name,
    required pulumi.Output<int> storageBoxId,
    pulumi.Output<String>? username,
    pulumi.Output<String>? withSelector,
  }) :
      id = pulumi.Input.asOptionalInput<int>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      storageBoxId = pulumi.Input.asInput<int>(storageBoxId),
      username = pulumi.Input.asOptionalInput<String>(username),
      withSelector = pulumi.Input.asOptionalInput<String>(withSelector);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'storageBoxId': storageBoxId,
      'username': ?username,
      'withSelector': ?withSelector,
    };
  }

  factory GetStorageBoxSubaccountArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxSubaccountArgs(
      id: map['id'] == null ? null : pulumi.Output.create<int>(map['id'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      storageBoxId: pulumi.Output.create<int>(map['storageBoxId'] as int),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
      withSelector: map['withSelector'] == null ? null : pulumi.Output.create<String>(map['withSelector'] as String),
    );
  }
}

