class Constants {
  static const defaultTimeOut = Duration(
    milliseconds: 1000,
  );
  static const defaultReceiveTimeOut = Duration(
    milliseconds: 5000,
  );
  static const timeToCache = Duration(minutes: 20);
  static const hitCacheOnError = [401, 404];
  static const totalRetry = 3;
  static const secondsTimeOut = 1;
  static const retryDelay = Duration(
    seconds: secondsTimeOut + secondsTimeOut,
  );
  static const String productsEndpoint =
      'https://gateway.finetwork.com/product/offering/products';
  static const int productsInitialPage = 1;
  static const int productsSize = 10;
  static const double carouselViewportFraction = 0.9;
  static const double carouselLoaderHeight = 430;
  static const String phone = '1777';
}
