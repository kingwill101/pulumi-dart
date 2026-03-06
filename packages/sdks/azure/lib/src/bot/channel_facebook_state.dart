// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_facebook_page.dart';

/// Input properties used for looking up and filtering ChannelFacebook resources.
class ChannelFacebookState {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? botName;
  /// The Facebook Application ID for the Facebook Channel.
  final pulumi.Input<String>? facebookApplicationId;
  /// The Facebook Application Secret for the Facebook Channel.
  final pulumi.Input<String>? facebookApplicationSecret;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// One or more `page` blocks as defined below.
  final pulumi.Input<List<ChannelFacebookPage>>? pages;
  /// The name of the resource group where the Facebook Channel should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ChannelFacebookState].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [facebookApplicationId] The Facebook Application ID for the Facebook Channel.
  /// [facebookApplicationSecret] The Facebook Application Secret for the Facebook Channel.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [pages] One or more `page` blocks as defined below.
  /// [resourceGroupName] The name of the resource group where the Facebook Channel should be created. Changing this forces a new resource to be created.
  const ChannelFacebookState({
    this.botName,
    this.facebookApplicationId,
    this.facebookApplicationSecret,
    this.location,
    this.pages,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': ?botName,
      'facebookApplicationId': ?facebookApplicationId,
      'facebookApplicationSecret': ?facebookApplicationSecret,
      'location': ?location,
      'pages': ?pulumi.Input.mapOptionalInputValue<List<ChannelFacebookPage>, List<Map<String, dynamic>>>(pages, (value) => pulumi.Input.encodeList<ChannelFacebookPage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ChannelFacebookState.fromMap(Map<String, dynamic> map) {
    return ChannelFacebookState(
      botName: (() { final guardedValue = map['botName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      facebookApplicationId: (() { final guardedValue = map['facebookApplicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      facebookApplicationSecret: (() { final guardedValue = map['facebookApplicationSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pages: (() { final guardedValue = map['pages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelFacebookPage>(guardedValue, (value) => ChannelFacebookPage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

