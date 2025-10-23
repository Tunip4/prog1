String message = "Hello, World";
  int key = 5;
    String encrypted = " ";
      void setup(){
        size(500,500);
          background(#07498E);
            encrypted = encrypt("Hello",5);
              text("Original: " +message, 20,80);
                text("Encrytped: "+encrypted,20,120);
      }
                    String encrypt(String text, int shift){
                      String result="";
                        for(int i=0; i<=text.length(); itt){
                          char c =text.charAt(i);
                            c+=shift;
                              result+=c;
                            
      }
