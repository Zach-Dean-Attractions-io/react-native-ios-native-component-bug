#import "FabricNativeComponentTestView.h"

#import "generated/RNFabricNativeComponentTestViewSpec/ComponentDescriptors.h"
#import "generated/RNFabricNativeComponentTestViewSpec/EventEmitters.h"
#import "generated/RNFabricNativeComponentTestViewSpec/Props.h"
#import "generated/RNFabricNativeComponentTestViewSpec/RCTComponentViewHelpers.h"

#import "RCTFabricComponentsPlugins.h"

using namespace facebook::react;

@interface FabricNativeComponentTestView () <RCTFabricNativeComponentTestViewViewProtocol>

@end

@implementation FabricNativeComponentTestView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<FabricNativeComponentTestViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const FabricNativeComponentTestViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<FabricNativeComponentTestViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<FabricNativeComponentTestViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor:[UIColor redColor]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> FabricNativeComponentTestViewCls(void)
{
    return FabricNativeComponentTestView.class;
}

- hexStringToColor:(NSString *)stringToConvert
{
    NSString *noHashString = [stringToConvert stringByReplacingOccurrencesOfString:@"#" withString:@""];
    NSScanner *stringScanner = [NSScanner scannerWithString:noHashString];

    unsigned hex;
    if (![stringScanner scanHexInt:&hex]) return nil;
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = (hex) & 0xFF;

    return [UIColor colorWithRed:r / 255.0f green:g / 255.0f blue:b / 255.0f alpha:1.0f];
}

@end
