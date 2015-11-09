module gunrow

import list

data country = Argentina | Australia | Austria | Honduras | USA

data list gunrow = argen | austral | aust | hond | us

|||A record of this type represents a country and the death rate per 1O,OOO,OOO by gun for Homicides, Suicides, Unintentional, and Other

data gunrow = mkGunrow country Nat Nat Nat Nat

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

austral: gunrow
austral = mkGunrow Australia 11 62 5 8

aust: gunrow
aust = mkGunrow Austria 18 268 1 8

hond: gunrow
hond = mkGunrow Honduras 648 0 0 0

us: gunrow
us = mkGunrow USA 355 670 16 9

countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c

homicidePer1OM: gunrow -> Nat
homicidePer1OM (mkGunrow c h s u o) = h

suicidePer1OM: gunrow -> Nat
suicidePer1OM (mkGunrow c h s u o) = s

unintentionalPer1OM: gunrow -> Nat
unintentionalPer1OM (mkGunrow c h s u o) = u

otherPer1OM: gunrow -> Nat
otherPer1OM (mkGunrow c h s u o) = o

table: list gunrow
table = cons argen (cons austral (cons aust (cons hond (cons us (nil)))))

