// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'platform_image_purchase_plan.dart';

/// Describes an image source from [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
class ImageTemplatePlatformImageSource {
  /// Image offer from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
  final pulumi.Input<String>? offer;
  /// Optional configuration of purchase plan for platform image.
  final pulumi.Input<PlatformImagePurchasePlan>? planInfo;
  /// Image Publisher in [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
  final pulumi.Input<String>? publisher;
  /// Image sku from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
  final pulumi.Input<String>? sku;
  /// Specifies the type of source image you want to start with.
  /// Expected value is 'PlatformImage'.
  final pulumi.Input<String> type;
  /// Image version from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages). If 'latest' is specified here, the version is evaluated when the image build takes place, not when the template is submitted.
  final pulumi.Input<String>? version;

  /// Creates a new [ImageTemplatePlatformImageSource].
  /// [offer] Image offer from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
  /// [planInfo] Optional configuration of purchase plan for platform image.
  /// [publisher] Image Publisher in [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
  /// [sku] Image sku from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
  /// [type] Specifies the type of source image you want to start with.
  /// [version] Image version from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages). If 'latest' is specified here, the version is evaluated when the image build takes place, not when the template is submitted.
  ImageTemplatePlatformImageSource({
    this.offer,
    this.planInfo,
    this.publisher,
    this.sku,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offer': ?offer,
      'planInfo': ?pulumi.Input.mapOptionalInputValue<PlatformImagePurchasePlan, Map<String, dynamic>>(planInfo, (value) => value.toMap()),
      'publisher': ?publisher,
      'sku': ?sku,
      'type': type,
      'version': ?version,
    };
  }

  factory ImageTemplatePlatformImageSource.fromMap(Map<String, dynamic> map) {
    return ImageTemplatePlatformImageSource(
      offer: map['offer'] == null ? null : (map['offer'] as String).input(),
      planInfo: map['planInfo'] == null ? null : (PlatformImagePurchasePlan.fromMap((map['planInfo'] as Map).cast<String, dynamic>())).input(),
      publisher: map['publisher'] == null ? null : (map['publisher'] as String).input(),
      sku: map['sku'] == null ? null : (map['sku'] as String).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

