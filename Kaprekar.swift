var strin = readLine()!;
var dictin = [String]();
var strasc = "";
var strdesc = "";
var strint = 0;
print ("Your number is:",strin,"\n\nNow let's check it's convergence...\n");

while !(dictin.contains(strin)) {
  dictin.append(strin)
  strasc = (String(Array(Array(strin).sorted()))); 
  strdesc = (String(strasc.reversed()));
  strint = Int(Double(strdesc)! - Double(strasc)!);
  strin = String(strint);
  print("\(strdesc) - \(strasc) = \(strint)");
 if (dictin.firstIndex(of: strin) != nil && dictin.contains(strin)) {
    if ((dictin.count) - (dictin.firstIndex(of: strin))!) == 1 {
      print ("\nKaprekar's constant is \(strin)");
    }
    else {
      print ("\nPeriod of Kaprekar's loop for given number = \((dictin.count) - (dictin.firstIndex(of: strin))!)");
      print ("And loop cosists of sequence of numbers:");
      for iter in (dictin.firstIndex(of: strin))! ... Int(dictin.count)-1 {
        print ("   ",Int(dictin[iter])!);
      } 
    }
  } 
}    
