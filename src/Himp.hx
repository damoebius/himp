package ;

import js.html.Uint8Array;
import js.Error;
import haxe.MimeType;
import js.html.ImageData;

@:expose @:keep class Himp {

    private static var _instance:Himp;

    private var _data:Uint8Array;
    private var _mimeType:MimeType;

    public static function main( ):Void {
        _instance = new Himp();
    }

    public static function read(data:Uint8Array, mimeType:MimeType):Void{
         _instance.process(data, mimeType);
    }

    private function new(){}

    private function process(data:Uint8Array, mimeType:MimeType):Void{
        _data = data;
        _mimeType = mimeType;
        switch (_mimeType) {
            case MimeType.PNG:
                trace("png");

            case MimeType.JPEG:
                trace("jpg");
            default:
                throw(new Error("unknown mime type"));
        }
    }

}