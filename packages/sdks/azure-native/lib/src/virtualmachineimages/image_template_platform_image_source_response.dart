// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'platform_image_purchase_plan_response.dart';

/// Describes an image source from [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
class ImageTemplatePlatformImageSourceResponse {
  /// Image version from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages). This readonly field differs from 'version', only if the value specified in 'version' field is 'latest'.
  final pulumi.Input<String> exactVersion;

  /// Image offer from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
  final pulumi.Input<String>? offer;

  /// Optional configuration of purchase plan for platform image.
  final pulumi.Input<PlatformImagePurchasePlanResponse>? planInfo;

  /// Image Publisher in [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
  final pulumi.Input<String>? publisher;

  /// Image sku from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
  final pulumi.Input<String>? sku;

  /// Specifies the type of source image you want to start with.
  /// Expected value is 'PlatformImage'.
  final pulumi.Input<String> type;

  /// Image version from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages). If 'latest' is specified here, the version is evaluated when the image build takes place, not when the template is submitted.
  final pulumi.Input<String>? version;

  /// Creates a new [ImageTemplatePlatformImageSourceResponse].
  /// [exactVersion] Image version from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages). This readonly field differs from 'version', only if the value specified in 'version' field is 'latest'.
  /// [offer] Image offer from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
  /// [planInfo] Optional configuration of purchase plan for platform image.
  /// [publisher] Image Publisher in [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
  /// [sku] Image sku from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
  /// [type] Specifies the type of source image you want to start with.
  /// [version] Image version from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages). If 'latest' is specified here, the version is evaluated when the image build takes place, not when the template is submitted.
  ImageTemplatePlatformImageSourceResponse({
    required this.exactVersion,
    this.offer,
    this.planInfo,
    this.publisher,
    this.sku,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactVersion': exactVersion,
      'offer': ?offer,
      'planInfo':
          ?pulumi.Input.mapOptionalInputValue<
            PlatformImagePurchasePlanResponse,
            Map<String, dynamic>
          >(planInfo, (value) => value.toMap()),
      'publisher': ?publisher,
      'sku': ?sku,
      'type': type,
      'version': ?version,
    };
  }

  factory ImageTemplatePlatformImageSourceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ImageTemplatePlatformImageSourceResponse(
      exactVersion: pulumi.Input.fromValue(map['exactVersion'] as String),
      offer: (() {
        final guardedValue = map['offer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      planInfo: (() {
        final guardedValue = map['planInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PlatformImagePurchasePlanResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      publisher: (() {
        final guardedValue = map['publisher'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
