library resourceviews_v1beta1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_resourceviews_v1beta1_api/src/browser_client.dart';
import "package:google_resourceviews_v1beta1_api/resourceviews_v1beta1_api_client.dart";

/** The Google Resource Views API provides views of VMs. */
class Resourceviews extends Client with BrowserClient {

  /** OAuth Scope2: View and manage your data across Google Cloud Platform services */
  static const String CLOUD_PLATFORM_SCOPE = "https://www.googleapis.com/auth/cloud-platform";

  /** OAuth Scope2: View and manage your Google Cloud Platform management resources and deployment status information */
  static const String NDEV_CLOUDMAN_SCOPE = "https://www.googleapis.com/auth/ndev.cloudman";

  /** OAuth Scope2: View your Google Cloud Platform management resources and deployment status information */
  static const String NDEV_CLOUDMAN_READONLY_SCOPE = "https://www.googleapis.com/auth/ndev.cloudman.readonly";

  final oauth.OAuth2 auth;

  Resourceviews([oauth.OAuth2 this.auth]);
}
