class Pessoa{
  String _nome = '';
  double _peso=0.0;
  double _altura=0.0;
  
  Pessoa(this._nome, this._peso, this._altura);

  void setNome(String nome){
    this._nome = nome;
  }
  String getNome(){
    return _nome;
  }
  void setPeso(double peso){
    this._peso = peso;
  }
  double getPeso(){
    return _peso;
  }
  void setAltura(double altura){
    this._altura = altura;
  }
  double getAltura(){
    return _altura;
  }
}