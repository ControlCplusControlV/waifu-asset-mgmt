# @version 0.3.9

"""
@title Waifu Asset Management
@author Chef Copypaste, and Xerox Carnation
@license GNU Affero General Public License v3.0
"""

# WHAT IS THE FUN IF THERE IS NO RISK?
#⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠉⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
#⣿⣿⣿⣿⣿⣿⣿⡿⠁⡁⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
#⣿⣿⣿⣿⣿⣿⠿⢂⡾⣱⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⢿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
#⣿⣿⣿⣿⣿⠿⣠⠟⣰⣿⣿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
#⣿⣿⣿⣿⣿⣿⠃⢠⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠈⣿⣿⣿⣿⣿⡏⣿⣿⣿⣿⢹⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
#⣿⣿⣿⣿⣾⢃⣴⣿⡏⡿⣼⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⢻⣿⣿⣿⣯⡇⢸⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
#⣿⣿⣿⡿⢁⣾⡝⢹⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⢸⣿⣿⡿⠻⣀⣘⣛⣛⣛⠰⠿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
#⣿⣿⡿⢁⡾⠁⣧⣾⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⠈⡇⣿⣿⣿⣿⣿⣿⣿⠿⠃⠀⠀⡼⢋⣱⣾⠟⠛⠉⠛⣟⠿⣿⣦⣸⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀
#⣿⣿⢃⣾⠁⢸⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⠀⠘⢹⡿⠿⠛⠛⠋⠁⠀⠀⠀⠀⠀⢞⣿⣎⡠⠶⠦⠤⠮⠤⠼⠛⣻⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠹⡄⠀⠀⠀⠀⠀⠀⠀
#⣿⠃⣼⠟⠀⣿⣿⣿⣿⣿⣿⣿⣿⠀⠻⣿⣿⣿⣿⠿⠟⠛⢳⡶⠤⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡜⢧⠀⠀⠸⣄⠀⠀⠀⠀⠀⠀
#⡏⢸⡟⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⡇⢀⣾⡟⡏⠁⠀⣀⡤⠔⠚⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡇⣿⡟⣿⣿⣿⣿⣿⣿⡇⠈⢧⡀⠀⠘⣄⠀⠀⠀⠀⠀
#⠁⡟⡀⠀⠀⣿⢹⣿⣿⣿⣿⣿⣿⣇⣿⣯⣀⣷⠶⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠟⢀⣿⠁⣿⣿⣿⣿⣿⣿⣿⠀⠈⢳⡄⠀⠙⡄⠀⠀⠀⠀
#⠺⠏⠁⠀⠀⣿⢸⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⢸⡟⠀⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⢳⡄⠀⢱⠀⠀⠀⠀
#⢸⡴⡀⠀⠀⣿⢸⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡟⠁⠀⡧⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠹⣆⠀⠇⠀⠀⠀
#⢀⣰⡔⠀⠀⣿⡞⣿⣿⣿⣿⣿⣿⣻⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠔⠋⠀⠀⢸⡯⣿⣯⣿⣿⣿⣿⡇⠀⠀⠀⠀⠹⣆⠀⠀⠀⠀
#⢛⡭⣁⠀⠀⢻⡇⣿⣿⣿⣿⣿⣿⣧⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠖⢒⣉⣭⣭⣕⣲⣤⠖⠒⠀⠀⠀⠀⠀⠀⢸⢁⣿⡟⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠘⣧⠀⠀⠀
#⠰⠛⠁⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⡜⣦⣱⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣰⣾⣵⠿⠟⠋⢁⣠⢟⡋⠀⠀⠀⠀⠀⠀⠀⠀⠀⡿⢉⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠘⣧⠀⠀
#⠠⢄⠀⠀⠀⠀⢿⡟⣿⣿⣿⣿⣿⣷⠈⠳⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠛⣿⡿⢿⢵⠛⠁⠀⠀⠀⢠⠖⠛⡏⠀⠀⣼⠁⣸⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠘⣧⠀
#⠀⠁⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⠳⣄⠀⠽⢦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡏⠙⣿⠀⢧⠀⠀⠀⢠⠏⠀⢸⠁⢀⣼⡟⠋⣙⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠘⣧
#⠠⠀⠀⠀⠀⣸⠃⢻⣿⣿⣿⣿⣿⣿⣇⠈⠓⠦⣬⣧⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⡀⢹⡀⠀⢧⠀⠀⢸⠀⠀⢾⣠⣿⠏⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠘
#⠀⠀⠀⠀⢠⢏⡀⢈⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠙⠶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠙⣄⢧⠀⠈⢳⡀⢸⠀⠀⢺⣿⠃⠀⢰⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀
#⠠⠀⠀⠀⡾⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠈⠙⢲⣦⣄⣀⣀⠀⠀⠀⠈⢻⣆⠀⠀⢳⣾⠀⠀⢸⠇⠀⠀⣾⣿⣿⣿⣿⣿⣿⡿⠘⣿⣿⣿⣇⢀⠀⠀⠀⠀⠀⠀
#⠀⠀⠀⡼⠁⠀⢀⣿⣿⡿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⣀⠀⠀⢻⡀⠙⠛⠿⢿⣿⣶⣶⣿⣄⠀⠀⢹⠀⠀⢸⠀⠀⢠⣿⣿⣻⣿⣿⣿⣿⠇⠀⢹⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀
#⠀⠀⣼⠁⠀⠀⣸⣿⣿⠇⢻⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⢸⡄⢸⡿⠳⠤⣄⣀⠀⠀⠈⠉⠉⠙⢧⠀⢸⠀⠀⠈⡆⠀⣾⢟⣽⣿⣿⣿⣿⡟⠀⠀⠈⢿⣿⣿⣷⠀⠀⠀⠀⠀⠀
#⢀⡾⠃⠀⠀⢠⣿⣿⡏⠀⠀⢻⣿⣿⣿⣿⣿⣿⣆⠀⠂⣰⢸⡅⣾⠃⠀⠀⠀⠉⠙⠒⠤⣤⣀⢀⣬⣷⣾⠀⠀⠀⢇⢰⣻⣿⣿⣿⣿⡟⠋⠀⠀⠀⠀⠘⢿⣿⣿⣧⠀⠀⠀⠀⠀
#⡿⠁⠀⠀⢠⣿⣿⡟⢀⡀⠀⠀⠝⣿⣿⣿⣿⣿⣿⣷⣤⡿⣾⣴⡿⠀⠀⡖⠒⢦⡀⠀⠀⢀⡼⠉⢧⣧⡇⠀⠀⠀⠸⡏⠉⣿⡛⠛⢉⡀⠂⠀⠸⣆⡀⠀⠈⣿⣿⣿⣆⠀⠀⠀⠀
#⠀⠀⠀⢠⣿⣿⡟⠁⡤⠠⡠⣠⣿⡏⡻⢿⣿⣿⣿⢿⣿⣹⣿⣿⡇⠀⠀⢣⠀⠀⠙⢆⣠⠏⠫⠠⢒⢿⠇⠀⠀⠀⠀⢻⠀⢸⣷⡄⠈⠀⠂⡀⣠⣿⣿⡆⠀⢈⢿⣿⣿⣆⠀⠀⠀
#⠀⠀⣠⣿⣿⡛⣄⣸⢠⣭⣶⣟⣿⣥⣒⣔⣋⣥⣾⣿⣿⣿⣿⣿⠀⠀⠀⠈⢧⡀⣠⢼⣿⣷⣶⣲⡾⡏⠀⠀⠀⠀⠀⢸⠀⠀⣿⣿⣿⣇⣭⡳⣦⣾⣷⣻⣦⣼⣝⣿⣿⣿⣆⠀⠀
#⢀⣴⣿⣿⣿⣿⣿⣾⣿⣿⣯⣾⠿⠷⢿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⢀⣿⡗⠉⠈⠻⣿⡝⢀⠇⠀⠀⠀⠀⠀⡾⠀⠀⢸⣿⣿⣿⣿⠻⠬⣿⣿⣷⣝⣿⣿⣿⣿⣿⣿⣧⡀
#⣾⡿⠟⠛⠋⠉⠈⠁⠉⠉⠉⠉⠛⠒⠀⡀⣠⣿⣿⣿⣿⣿⣿⣄⣀⣀⡤⠒⠁⢀⣷⠀⠀⠀⠀⠀⡼⠀⠀⠀⠀⠀⢠⠧⣄⠀⠈⢿⣿⣿⣿⣷⡄⠈⠉⠀⠉⠉⠉⠉⠉⠉⠉⠙⠛
#⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⣡⣶⣿⣿⡇⠀⠀⠀⡸⠁⠀⠀⠀⠀⠀⢸⣄⠈⠉⠉⢹⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
#⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⡿⠀⠀⣀⣴⣿⣿⣿⣿⠿⢻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣷⣤⡀⠀⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
#⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⠃⢴⣾⣿⣿⣿⡿⠛⠁⠀⠀⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⢛⠿⣿⣿⣿⡦⣸⣿⣿⣿⣿⣿⣿⣿⣆⡀⠀⠀⠀⠀⠀⠀⠀

#
# Vars
#

MIN_FEE: public(constant(uint16)) = 0
MAX_FEE: public(constant(uint16)) = 0

# FACTORY: public(constant(address)) = 0xAb5801a7D398351b8bE11C439e05C5B3259aeC9B

keeper: public(address)
management: public(address)
asset: public(immutable(address))
performanceFeeRecipient: public(address)
performanceFee: public(address)
isShutdown: public(bool)

lastReport: public(uint256)

totalIdle: public(uint256)
totalDebt: public(uint256)

emergencyAdmin: public(address)
pendingManagement: public(address)

@external
def __init__(_asset: address, _name: String[40], _management: address, _performanceFeeRecipient: address, _keeper: address):
  asset = _asset
  keeper = _keeper
  management = _management
  performanceFeeRecipient = _performanceFeeRecipient

@view
@internal
def convert_to_shares(asset_amount: uint256) -> uint256:
  _total_assets: uint256 = total_assets()
  _total_supply: uint256 = total_supply()

  # If assets are 0 but supply is not then Price Per Share is zero
  if _total_assets == 0:
    if _total_supply == 0:
      return asset_amount
    else:
      return 0

  # FWIW The Solidity impl uses mul_div but not neccessary under reasonable token amount constraints
  return (assets * _total_supply) / _total_assets
    
@view
@internal
def convert_to_assets(share_amount: uint256) -> uint256:
  _total_assets: uint256 = total_assets()
  _total_supply: uint256 = total_supply()

  if supply == 0:
    return share_amount

  # FWIW The Solidity impl uses mul_div but not neccessary under reasonable token amount constraints
  return (shares * total_assets) / supply
    
@view
@internal
def total_supply() -> uint256:
  return 0

@view
@internal
def total_assets() -> uint256:
  return 0

#
# ERC20 Stuffs
#

@view
@external
def symbol() -> String[3]:
  """
  @return The token symbol for the ERC4626 Vault Token
  """
  return SYMBOL


DECIMALS: constant(uint8) = 18

@view
@external
def decimals() -> uint8:
  """
  @return The number of decimals for the ERC4626 Vault Token
  """
  return DECIMALS


@external
def transfer(receiver: address, amount: uint256) -> bool:
  """
  """
  self.balanceOf[msg.sender] -= amount
  self.balanceOf[receiver] += amount
  log Transfer(msg.sender, receiver, amount)
  return True


@external
def approve(spender: address, amount: uint256) -> bool:
  """
  """
  self.allowance[msg.sender][spender] = amount
  log Approval(msg.sender, spender, amount)
  return True


@external
def transferFrom(sender: address, receiver: address, amount: uint256) -> bool:
  """
  """
  self.allowance[sender][msg.sender] -= amount
  self.balanceOf[sender] -= amount
  self.balanceOf[receiver] += amount
  log Transfer(sender, receiver, amount)
  return True



#
# ERC4626 
# 

@view
@external
def maxDeposit(owner: address) -> uint256:
    return max_value(uint256)

@view
@external
def maxMint(owner: address) -> uint256:
    return max_value(uint256)

@view
@external
def previewDeposit(assets: uint256) -> uint256:
  return self.convert_to_shares(assets)

@view
@external
def previewMint(shares: uint256) -> uint256:
  # TODO rounding?
  return self.convert_to_assets(shares)

@external
def deposit(assets: uint256, receiver: address=msg.sender) -> uint256:
    pass

@external
def mint(shares: uint256, receiver: address=msg.sender) -> uint256:
    pass

@view
@external
def maxWithdraw(owner: address) -> uint256:
    pass

@view
@external
def previewWithdraw(assets: uint256) -> uint256:
    pass

@external
def withdraw(assets: uint256, receiver: address=msg.sender, owner: address=msg.sender) -> uint256:
    pass

@view
@external
def maxRedeem(owner: address) -> uint256:
    pass

@view
@external
def previewRedeem(shares: uint256) -> uint256:
    pass

@external
def redeem(shares: uint256, receiver: address=msg.sender, owner: address=msg.sender) -> uint256:
    pass

#
# Non-standard ERC4626
#

#@external
#def withdraw(assets: uint256, receiver: address, owner: address, maxLoss: uint256) -> uint256:
#  return 5

#@external
#def redeem(shares: uint256, receiver: address, owner: address, maxLoss: uint256) -> uint256:
#  return 0

#
#  Modifiers
#

@view
@external
def isManagement(_sender: address) -> bool:
  return False

@view
@external
def isKeeperOrManagement(_sender: address) -> bool:
  return False

@view
@external
def isEmergencyAuthorized(_sender: address) -> bool:
  return False

#
# Keepers
#

@external
def tend():
  return

@external
def report() -> (uint256, uint256):
  # Returns PnL
  return 0, 0

@external
def apiVersion() -> String[10]:
  return "0.3.9"

@external
def pricePerShare() -> uint256:
  return self.convert_to_assets(10 ** 18)

@external
def fullProfitUnlockDate() -> uint256:
  return 0

@external
def profitUnlockingRate() -> uint256:
  return 0

@external
def profitMaxUnlockTime() -> uint256:
  return 0

@external
def unlockedShares() -> uint256:
  return 0

#
# Setters
# 

@external
def setPendingManagement(_pendingManagement: address):
  assert msg.sender == self.management, "AXS"
  self.pendingManagement = _pendingManagement

@external
def acceptManagement():
  pending: address = self.pendingManagement
  assert msg.sender == pending
  self.management = pending
  self.pendingManagement = empty(address)

@external
def setKeeper(_keeper: address):
  assert msg.sender == self.management, "AXS"


@external
def setEmergencyAdmin(_emergencyAdmin: address):
  assert msg.sender == self.management, "AXS"


@external
def setPerformanceFee(_performanceFee: uint16):
  assert msg.sender == self.management, "AXS"


@external
def setPerformanceFeeRecipient(_performanceFeeRecipient: address):
  assert msg.sender == self.management, "AXS"


@external
def setProfitMaxUnlockTime(_profitMaxUnlockTime: uint256):
  assert msg.sender == self.management, "AXS"


@external
def shutdownStrategy():
  assert msg.sender == self.management, "AXS"

@external
def emergencyWithdraw(_amount: uint256):
  return