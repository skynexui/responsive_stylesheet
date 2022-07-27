import 'package:flutter/material.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';

class HolyGrailLayoutScreen extends StatelessWidget {
  const HolyGrailLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HolyGrailLayoutBody(),
    );
  }
}

class _HolyGrailLayoutBody extends StatelessWidget {
  const _HolyGrailLayoutBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var responsive = Responsive(context);
    return GridItem(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 50,
          color: Colors.purple.shade500,
          child: const GridItem(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Header',
              ),
            ],
          ),
        ),
        Expanded(
          child: GridItem(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            as: Row,
            children: [
              Container(
                color: Colors.red.shade100,
                child: SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    constraints: const BoxConstraints(
                      maxWidth: 500,
                    ),
                    child: GridItem(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            'Body',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                        const Text(
                          '''
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vestibulum lacus arcu, eget interdum neque eleifend nec. Donec sit amet sapien bibendum, pellentesque nibh id, molestie neque. Praesent id elit non turpis imperdiet placerat. Quisque non mollis sem. Morbi ac lorem dictum, fringilla nisi varius, viverra nunc. Mauris condimentum molestie efficitur. Vivamus vestibulum diam at vehicula aliquam. Proin sagittis dui at nisl feugiat, ac pellentesque nisl mattis. Vivamus imperdiet elit et erat molestie, id lacinia purus vestibulum. Nam maximus dui ut hendrerit rutrum. Maecenas ultrices augue non quam porta posuere sed nec odio.
Nullam vitae tellus a mauris suscipit feugiat vitae non nulla. Vestibulum massa elit, dapibus nec lorem id, gravida faucibus ligula. Fusce luctus risus vestibulum felis scelerisque euismod. Aenean quis sem dolor. Ut placerat turpis ut mattis convallis. Morbi hendrerit metus vitae quam tristique, ultricies rhoncus neque efficitur. In dapibus iaculis tempor. Curabitur ligula nunc, pulvinar quis sagittis eget, iaculis ac dolor. Aliquam ut tortor dapibus, sollicitudin augue suscipit, porta eros. Integer eget vulputate mauris, ac posuere tellus.
Praesent ac venenatis nunc. Maecenas eu tortor et nunc tempor feugiat. Morbi semper arcu id faucibus suscipit. Pellentesque volutpat vel nunc eu euismod. Fusce sagittis risus a porttitor lacinia. Suspendisse potenti. Sed nisi metus, ultricies vel dolor vitae, iaculis efficitur lorem.
Sed quis nunc iaculis, egestas erat facilisis, ornare sem. Nullam nec posuere ligula, ac rutrum tellus. Etiam accumsan lorem odio, nec vehicula ante euismod ut. Vivamus ultricies mi eget dui scelerisque, vel tincidunt turpis sodales. Aliquam tincidunt leo nec lacus aliquam mollis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam ut consectetur justo. Suspendisse vel tincidunt turpis. Nam et tincidunt leo. Donec tellus augue, tempor a cursus nec, aliquam sit amet nisi. Morbi sapien leo, semper at egestas sed, ullamcorper sit amet dui. Ut tristique eu orci vel commodo. Nam mollis pellentesque risus a dapibus.
  Vivamus non magna tellus. Nam non dolor ornare, tristique nibh sed, fermentum magna. Maecenas mattis tincidunt mauris id tincidunt. Phasellus ullamcorper nulla quis molestie iaculis. Ut maximus, nisl vel tempor facilisis, odio risus bibendum justo, vel varius lectus dui nec dolor. In mi orci, dignissim luctus sodales eu, mattis in leo. Donec vel bibendum neque. Proin dapibus nulla et felis bibendum pulvinar. Morbi et lacus egestas ipsum finibus consectetur. Fusce pulvinar blandit elit, in consequat magna ornare eget. Phasellus a sollicitudin enim. Mauris tristique auctor pellentesque. Duis sit amet elementum mauris, dictum consectetur nisl. Nam sollicitudin mi ac felis elementum, sed pulvinar ligula sagittis.
Nullam bibendum mi urna, et porta quam aliquet venenatis. Nam luctus iaculis fringilla. Donec malesuada, ante at elementum tempus, mauris mi maximus ligula, ut pharetra est nunc vel diam. Nam quis ligula sed purus gravida molestie vitae et ante. Donec vulputate volutpat accumsan. Proin non lectus tincidunt, congue libero ultrices, consequat diam. Proin non maximus enim, sed ultricies ipsum. Morbi scelerisque quam sit amet urna feugiat sodales. Aenean maximus nibh non vulputate rutrum.
  Vivamus blandit malesuada nisi, eu efficitur elit feugiat quis. Morbi auctor id nibh sit amet tristique. Ut a vestibulum diam. Aliquam in mauris vitae ex tempus dignissim eget id sem. Vivamus rutrum, ligula et vulputate ornare, magna eros sollicitudin enim, consequat bibendum dolor leo ac ligula. Proin sed mauris eget lectus egestas placerat. Quisque ut gravida nulla. Praesent vitae nibh ornare, mattis sem ut, faucibus tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum suscipit rhoncus neque, in dapibus est semper non. Morbi vulputate odio tortor, vitae fermentum lectus placerat et. Praesent leo ex, consequat ut leo mattis, sagittis placerat diam. Mauris efficitur consequat rhoncus. Fusce molestie mattis est eget viverra. Nullam commodo tortor et vestibulum pharetra.
Quisque tempus interdum tincidunt. Aliquam quis varius nisi, vitae luctus massa. Sed id laoreet felis. Donec mollis suscipit erat, eu feugiat metus imperdiet sollicitudin. Integer placerat porttitor tortor, vitae laoreet nibh. Sed sit amet sapien rutrum, ultrices nisl ut, porttitor mauris. Vestibulum vel ullamcorper purus.
Integer fringilla lorem a felis ornare cursus. Integer nec eleifend arcu. Nullam non dictum purus. In fringilla est urna, commodo mollis sem vestibulum at. Integer vitae tincidunt mauris. Nam metus justo, tristique a fermentum sit amet, suscipit ac lacus. Curabitur maximus efficitur metus, vitae mollis lorem tristique sed. Donec egestas nisl a nulla vulputate, ut elementum elit accumsan.
Curabitur commodo hendrerit elit sit amet cursus. Nulla id libero vel lectus mattis maximus vel eu lacus. Quisque sem libero, euismod at ante a, molestie rutrum orci. Nulla nisl sapien, elementum a tincidunt sed, mollis sed nulla. Nullam elementum nisi sed euismod vestibulum. Pellentesque eget facilisis nibh. Duis vulputate, quam eget fringilla commodo, velit erat ornare nunc, id venenatis magna ante a diam. Donec ornare, nisi a sagittis pretium, sapien felis porta magna, in hendrerit leo enim vel ante. Nulla a mi vitae mauris fringilla elementum. Suspendisse sed nibh sit amet tellus rhoncus hendrerit in id ex.
                          ''',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: responsive.value({
                  Breakpoints.xs: false,
                  Breakpoints.md: true,
                }),
                child: Container(
                  width: 200,
                  color: Colors.red.shade100,
                  child: const Text('Aside'),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.grey.shade900,
          height: 50,
          child: const GridItem(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Footer',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
