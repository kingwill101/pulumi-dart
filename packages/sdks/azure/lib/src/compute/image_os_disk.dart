// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageOsDisk {
  /// Specifies the URI in Azure storage of the blob that you want to use to create the image. Changing this forces a new resource to be created.
  final pulumi.Input<String>? blobUri;

  /// Specifies the caching mode as `ReadWrite`, `ReadOnly`, or `None`. The default is `None`.
  final pulumi.Input<String>? caching;

  /// The ID of the Disk Encryption Set which should be used to encrypt this disk. Changing this forces a new resource to be created.
  final pulumi.Input<String>? diskEncryptionSetId;

  /// Specifies the ID of the managed disk resource that you want to use to create the image.
  final pulumi.Input<String>? managedDiskId;

  /// Specifies the state of the operating system contained in the blob. Currently, the only value is Generalized. Possible values are `Generalized` and `Specialized`.
  final pulumi.Input<String>? osState;

  /// Specifies the type of operating system contained in the virtual machine image. Possible values are: `Windows` or `Linux`.
  final pulumi.Input<String>? osType;

  /// Specifies the size of the image to be created. Changing this forces a new resource to be created.
  final pulumi.Input<int>? sizeGb;

  /// The type of Storage Disk to use. Possible values are `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS` and `UltraSSD_LRS`. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageType;

  /// Creates a new [ImageOsDisk].
  /// [blobUri] Specifies the URI in Azure storage of the blob that you want to use to create the image. Changing this forces a new resource to be created.
  /// [caching] Specifies the caching mode as `ReadWrite`, `ReadOnly`, or `None`. The default is `None`.
  /// [diskEncryptionSetId] The ID of the Disk Encryption Set which should be used to encrypt this disk. Changing this forces a new resource to be created.
  /// [managedDiskId] Specifies the ID of the managed disk resource that you want to use to create the image.
  /// [osState] Specifies the state of the operating system contained in the blob. Currently, the only value is Generalized. Possible values are `Generalized` and `Specialized`.
  /// [osType] Specifies the type of operating system contained in the virtual machine image. Possible values are: `Windows` or `Linux`.
  /// [sizeGb] Specifies the size of the image to be created. Changing this forces a new resource to be created.
  /// [storageType] The type of Storage Disk to use. Possible values are `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS` and `UltraSSD_LRS`. Changing this forces a new resource to be created.
  ImageOsDisk({
    this.blobUri,
    this.caching,
    this.diskEncryptionSetId,
    this.managedDiskId,
    this.osState,
    this.osType,
    this.sizeGb,
    required this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobUri': ?blobUri,
      'caching': ?caching,
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'managedDiskId': ?managedDiskId,
      'osState': ?osState,
      'osType': ?osType,
      'sizeGb': ?sizeGb,
      'storageType': storageType,
    };
  }

  factory ImageOsDisk.fromMap(Map<String, dynamic> map) {
    return ImageOsDisk(
      blobUri: (() {
        final guardedValue = map['blobUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      caching: (() {
        final guardedValue = map['caching'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskEncryptionSetId: (() {
        final guardedValue = map['diskEncryptionSetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedDiskId: (() {
        final guardedValue = map['managedDiskId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osState: (() {
        final guardedValue = map['osState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osType: (() {
        final guardedValue = map['osType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sizeGb: (() {
        final guardedValue = map['sizeGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      storageType: pulumi.Input.fromValue(map['storageType'] as String),
    );
  }
}
