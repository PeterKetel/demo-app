require 'spec_helper'

describe Micropost do
  subject { described_class }
  it 'There are no microposts' do
    expect(subject.all.count).to eql(0)
  end

  it '#create a new micropost if there is not a user who owns the micropost' do
    expect(subject.create.id).to be_nil
  end

  it '#create a new micropost' do
    expect(create :micropost).not_to be_nil
  end

  it '#drop a micropost' do
    mp = create :micropost
    user =  mp.user

    user.destroy

    expect(User.all.count).to eql(0)
    expect(subject.all.count).to eql(0)
  end

  it '#the input may not be greater then 140 characters' do
    mp = create :micropost
    mp.content = 'Último contacto del A320 con el control aéreo en tierra. Uno de los pilotos dice: “Dirección IRMAR, gracias 18G”. “Dirección IRMAR” es el acuse de recibo de la autorización del centro de control para proseguir la ruta directa hacia IRMAR, el siguiente punto en el que debía reportarse en su ruta hacia Düsseldorf. 18G es la abreviatura del indicador de radio GWI18G del vuelo.'
    expect{mp.save!}.to raise_error
  end
end
