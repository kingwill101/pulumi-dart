// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_images_get_images_args_doc}
/// Arguments for getImages.
/// {@endtemplate}
/// {@macro pulumi_index_get_images_get_images_args_doc}
class GetImagesArgs {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// Internal user ID set within the creator field. Setting to empty string "" will return images where creator field is not set
  final pulumi.Input<String?>? creator;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetImagesArgs].
  /// [accountId] Account identifier tag.
  /// [creator] Internal user ID set within the creator field. Setting to empty string "" will return images where creator field is not set
  /// [maxItems] Max items to fetch, default: 1000
  const GetImagesArgs({
    this.accountId,
    this.creator,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'creator': ?creator,
      'maxItems': ?maxItems,
    };
  }

  factory GetImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetImagesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
