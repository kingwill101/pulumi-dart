// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rich Business Messaging (RBM) Media displayed in Cards The following media-types are currently supported: Image Types * image/jpeg * image/jpg' * image/gif * image/png Video Types * video/h263 * video/m4v * video/mp4 * video/mpeg * video/mpeg4 * video/webm
class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaResponse {
  /// Publicly reachable URI of the file. The RBM platform determines the MIME type of the file from the content-type field in the HTTP headers when the platform fetches the file. The content-type field must be present and accurate in the HTTP response from the URL.
  final pulumi.Input<String> fileUri;

  /// Required for cards with vertical orientation. The height of the media within a rich card with a vertical layout. For a standalone card with horizontal layout, height is not customizable, and this field is ignored.
  final pulumi.Input<String> height;

  /// Optional. Publicly reachable URI of the thumbnail.If you don't provide a thumbnail URI, the RBM platform displays a blank placeholder thumbnail until the user's device downloads the file. Depending on the user's setting, the file may not download automatically and may require the user to tap a download button.
  final pulumi.Input<String> thumbnailUri;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaResponse].
  /// [fileUri] Publicly reachable URI of the file. The RBM platform determines the MIME type of the file from the content-type field in the HTTP headers when the platform fetches the file. The content-type field must be present and accurate in the HTTP response from the URL.
  /// [height] Required for cards with vertical orientation. The height of the media within a rich card with a vertical layout. For a standalone card with horizontal layout, height is not customizable, and this field is ignored.
  /// [thumbnailUri] Optional. Publicly reachable URI of the thumbnail.If you don't provide a thumbnail URI, the RBM platform displays a blank placeholder thumbnail until the user's device downloads the file. Depending on the user's setting, the file may not download automatically and may require the user to tap a download button.
  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaResponse({
    required this.fileUri,
    required this.height,
    required this.thumbnailUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileUri': fileUri,
      'height': height,
      'thumbnailUri': thumbnailUri,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaResponse(
      fileUri: pulumi.Input.fromValue(map['fileUri'] as String),
      height: pulumi.Input.fromValue(map['height'] as String),
      thumbnailUri: pulumi.Input.fromValue(map['thumbnailUri'] as String),
    );
  }
}
